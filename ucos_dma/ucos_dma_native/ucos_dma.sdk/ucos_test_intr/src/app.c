/*
*********************************************************************************************************
*                                            EXAMPLE CODE
*
*                          (c) Copyright 2009-2015; Micrium, Inc.; Weston, FL
*
*               All rights reserved.  Protected by international copyright laws.
*
*               Please feel free to use any application code labeled as 'EXAMPLE CODE' in
*               your application products.  Example code may be used as is, in whole or in
*               part, or may be used as a reference only.
*
*               Please help us continue to provide the Embedded community with the finest
*               software available.  Your honesty is greatly appreciated.
*
*               You can contact us at www.micrium.com.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                          SETUP INSTRUCTIONS
*
*   This demonstration project illustrate a basic uC/OS-III project with simple "hello world" output.
*
*   By default some configuration steps are required to compile this example :
*
*   1. Include the require Micrium software components
*       In the BSP setting dialog in the "overview" section of the left pane the following libraries
*       should be added to the BSP :
*
*           ucos_common
*           ucos_osiii
*           ucos_standalone
*
*   2. Kernel tick source - (Not required on the Zynq-7000 PS)
*       If a suitable timer is available in your FPGA design it can be used as the kernel tick source.
*       To do so, in the "ucos" section select a timer for the "kernel_tick_src" configuration option.
*
*   3. STDOUT configuration
*       Output from the print() and UCOS_Print() functions can be redirected to a supported UART. In
*       the "ucos" section the stdout configuration will list the available UARTs.
*
*   Troubleshooting :
*       By default the Xilinx SDK may not have selected the Micrium drivers for the timer and UART.
*       If that is the case they must be manually selected in the drivers configuration section.
*
*       Finally make sure the FPGA is programmed before debugging.
*
*
*   Remember that this example is provided for evaluation purposes only. Commercial development requires
*   a valid license from Micrium.
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            INCLUDE FILES
*********************************************************************************************************
*/

#include  <stdio.h>
#include  <Source/os.h>
#include  <ucos_bsp.h>
#include  <ucos_int.h>
#include "xaxidma.h"

#define DMA_DEV_ID      XPAR_AXIDMA_0_DEVICE_ID
#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID


#define MEM_BASE_ADDR       0x01000000

#define TX_BUFFER_BASE      (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE      (MEM_BASE_ADDR + 0x00300000)

#define RESET_TIMEOUT_COUNTER   10000
#define MAX_PKT_LEN     4


#define TEST_START_VALUE 3
#define NUMBER_OF_TRANSFERS	10

XAxiDma AxiDma;
int TxDone;
int RxDone;
int Error;

int Tries = 6;
int i;
int Index;
u8 *TxBufferPtr= (u8 *)TX_BUFFER_BASE;
u8 *RxBufferPtr= (u8 *)RX_BUFFER_BASE;
u8 Value;
/*
*********************************************************************************************************
*                                      LOCAL FUNCTION PROTOTYPES
*********************************************************************************************************
*/

void  MainTask (void *p_arg);

void    DMA0Task ();
OS_TCB  DMA0TCB;
CPU_STK DMA0TaskStk[512];

OS_SEM  DMA0Semaphore;

void DMA_TxIntrHandler (void *Callback);
void DMA_RxIntrHandler(void *Callback);

int  DMA_Init(XAxiDma *DMAPtr,u32 DeviceId);
int  DMA_Intr_Enable(XAxiDma *DMAPtr);
/*
*********************************************************************************************************
*                                               main()
*
* Description : Entry point for C code.
*
*********************************************************************************************************
*/

int main()
{

    UCOSStartup(MainTask);

    return 0;
}


/*
*********************************************************************************************************
*                                             MainTask()
*
* Description : Startup task example code.
*
* Returns     : none.
*
* Created by  : main().
*********************************************************************************************************
*/

void  MainTask (void *p_arg)
{
    OS_ERR       os_err;

    UCOS_Print("Hello world from the main task\r\n");

    OSSemCreate(&DMA0Semaphore, "DMA 0 Semaphore", 0, &os_err);

    OSTaskCreate(&DMA0TCB,
                  "DMA 0 Task",
                  DMA0Task,
                  DEF_NULL,
                  10,
                  DMA0TaskStk,
                  0,
                  512,
                  0,
                  0,
                  DEF_NULL,
                  0,
                 &os_err);


    DMA_Init(&AxiDma,0);

    DMA_Intr_Enable(&AxiDma);
    DMA0Task ();

    while (DEF_TRUE) {
        OSTimeDlyHMSM(0, 0, 10, 0, OS_OPT_TIME_HMSM_STRICT, &os_err);
        UCOS_Print("Periodic output every 10 seconds from the main task\r\n");
    }

}


int DMA_Init(XAxiDma *DMAPtr,u32 DeviceId)
{
	xil_printf("\r\n----Test 10----\r\n");
    int Status;
    XAxiDma_Config *Config=NULL;

    Config = XAxiDma_LookupConfig(DeviceId);
    if (!Config) {
        xil_printf("No config found for %d\r\n", DeviceId);
        return XST_FAILURE;
    }

    Status = XAxiDma_CfgInitialize(DMAPtr, Config);
    if (Status != XST_SUCCESS) {
        xil_printf("Initialization failed %d\r\n", Status);
        return XST_FAILURE;
    }
    if(XAxiDma_HasSg(DMAPtr)){
        xil_printf("Device configured as SG mode \r\n");
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}


int DMA_Intr_Enable(XAxiDma *DMAPtr)
{
    /* Disable all interrupts before setup */
    XAxiDma_IntrDisable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrDisable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DEVICE_TO_DMA);
    /* Enable all interrupts */
    XAxiDma_IntrEnable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrEnable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DEVICE_TO_DMA);
    return XST_SUCCESS;
}

void DMA0Task ()
{
    int Status;
    TxDone = 0;
    RxDone = 0;
    Error = 0;

    xil_printf("\r\n----DMA Test----\r\n");
    xil_printf("PKT_LEN=%d\r\n",MAX_PKT_LEN);

    for(i = 0; i < Tries; i ++)
    {
        UCOS_IntVectSet(62, 0, DEF_BIT_00, DMA_TxIntrHandler, &AxiDma);
        UCOS_IntSrcEn(62);

        Value = 0x55 + (i & 0xFF);
        for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
                TxBufferPtr[Index] = Value;

                Value = (Value + 1) & 0xFF;
                xil_printf("TxBufferPtr[Index] =%d\r\n",TxBufferPtr[Index]);
        }

        xil_printf("\r\n----A Test----\r\n");
        Xil_DCacheFlushRange((u32)TxBufferPtr, MAX_PKT_LEN);
        xil_printf("\r\n----B Test----\r\n");
        Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) RxBufferPtr,
                    MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);
        if (Status != XST_SUCCESS) {xil_printf("\r\n----XST_FAILURE----\r\n");}
        xil_printf("\r\n----C Test----\r\n");
        Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) TxBufferPtr,
                    MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);
        if (Status != XST_SUCCESS) {xil_printf("\r\n----XST_FAILURE----\r\n");}

        xil_printf("\r\n----Test 1----\r\n");
        while (!TxDone || !RxDone) { }
        xil_printf("\r\n----Test 2----\r\n");
        TxDone = 0;
        RxDone = 0;
        if (Error) {xil_printf("\r\n----XST_FAILURE----\r\n");}
        xil_printf("\r\n----Test 3----\r\n");
        Xil_DCacheInvalidateRange((u32)RxBufferPtr, MAX_PKT_LEN);


    }


    xil_printf("--- Exiting Test --- \r\n");

}

void DMA_TxIntrHandler(void *Callback)
{
	xil_printf("\r\n----Test 7----\r\n");
    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

    /* Acknowledge pending interrupts */

    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {
        Error = 1;
        /*
         * Reset should never fail for transmit channel
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if (XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }
            TimeOut -= 1;
        }
        return;
    }
    /*
     * If Completion interrupt is asserted, then set the TxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {
        TxDone = 1;
    }

    UCOS_IntVectSet(62, 0, DEF_BIT_00, DMA_RxIntrHandler, &AxiDma);
    UCOS_IntSrcEn(62);
    xil_printf("\r\n----Test 8----\r\n");
}

void DMA_RxIntrHandler(void *Callback)
{
	xil_printf("\r\n----Test 19----\r\n");
    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

    /* Acknowledge pending interrupts */
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {
        Error = 1;
        /* Reset could fail and hang
         * NEED a way to handle this or do not call it??
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if(XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }
            TimeOut -= 1;
        }
        return;
    }
    /*
     * If completion interrupt is asserted, then set RxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {
        RxDone = 1;
    }
}



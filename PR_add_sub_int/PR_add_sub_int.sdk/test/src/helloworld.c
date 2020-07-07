#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xdevcfg.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xaxidma.h"
//#include "ff.h"

// Parameters for Partial Reconfiguration
#define PR_ADD_ADDR 0x500000
#define PR_SUB_ADDR 0x600000

#define PR_ADD_LEN 0x65EE1//0x65E64//0x197990//0x741A4////0x82BB4//535 476 bytes
#define PR_SUB_LEN 0x65EE1//0x65E64//0x20AED0//0x82BB4//1070952 bytes

// System - Level Control registers ( SLCR )
#define SLCR_LOCK	0xF8000004 /**< SLCR Write Protection Lock */
#define SLCR_UNLOCK	0xF8000008 /**< SLCR Write Protection Unlock */
#define SLCR_LVL_SHFTR_EN 0xF8000900 /**< SLCR Level Shifters Enable */
#define SLCR_PCAP_CLK_CTRL XPAR_PS7_SLCR_0_S_AXI_BASEADDR + 0x168 /**< SLCR
					* PCAP clock control register address
					*/

#define SLCR_PCAP_CLK_CTRL_EN_MASK 0x1
#define SLCR_LOCK_VAL	0x767B
#define SLCR_UNLOCK_VAL	0xDF0D

//static FATFS fatfs ;
static int Reset = 1;
// Driver Instantiations
static XDcfg_Config * XDcfg_0 ;
XDcfg DcfgInstance ;
XDcfg * DcfgInstPtr ;

#define DMA_IN1		XPAR_DMA_IN1_DEVICE_ID
#define DMA_IN2     XPAR_DMA_IN2_DEVICE_ID
#define DMA_OUT     XPAR_DMA_OUT_DEVICE_ID

XAxiDma AxiDma_In1, AxiDma_In2, AxiDma_Out;

#define MEM_BASE_ADDR       0x01000000

#define TX_BUFFER_In1      (MEM_BASE_ADDR + 0x00100000)
#define TX_BUFFER_In2      (MEM_BASE_ADDR + 0x00200000)
#define RX_BUFFER_Out      (MEM_BASE_ADDR + 0x00300000)

#define N_samples		8
#define BYTES_TO_TRANSFER	sizeof(int)*N_samples

int dma_init(u32 DeviceId, XAxiDma * InstancePtr)
{
	XAxiDma_Config *CfgPtr;
	int Status;

	CfgPtr = XAxiDma_LookupConfig(DeviceId);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}

	Status = XAxiDma_CfgInitialize(InstancePtr, CfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if(XAxiDma_HasSg(InstancePtr)){
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	XAxiDma_IntrDisable(InstancePtr, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(InstancePtr, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DMA_TO_DEVICE);


	return XST_SUCCESS;
}

int test_dma()
{
	dma_init(DMA_IN1, &AxiDma_In1);
	dma_init(DMA_IN2, &AxiDma_In2);
	dma_init(DMA_OUT, &AxiDma_Out);

    //Xil_DCacheDisable();
    //Xil_ICacheDisable();

    int *TxBufferPtr_In1= (int *)TX_BUFFER_In1;
    int *TxBufferPtr_In2= (int *)TX_BUFFER_In2;
    int *RxBufferPtr_Out= (int *)RX_BUFFER_Out;

    int Value_In1 = 15;
    int Value_In2 = 10;

    for(int Index = 0; Index < N_samples; Index ++) {
    	TxBufferPtr_In1[Index] = Value_In1--;
    	TxBufferPtr_In2[Index] = Value_In2--;
    	RxBufferPtr_Out[Index] = 0;
    }
    Xil_DCacheFlushRange((u32)TxBufferPtr_In1, BYTES_TO_TRANSFER);
    Xil_DCacheFlushRange((u32)TxBufferPtr_In2, BYTES_TO_TRANSFER);
    Xil_DCacheFlushRange((u32)RxBufferPtr_Out, BYTES_TO_TRANSFER);

	// Enabling  caches
    //Xil_DCacheEnable();
    //Xil_ICacheEnable();

    xil_printf("Hello World\n\r");


   // xil_printf("Memory address is 0x%08x\n\r  0x%08x\n\r  0x%08x\n\r", dma_in1, dma_in2,dma_out);


	int Status = XAxiDma_SimpleTransfer(&AxiDma_In1 ,(u32)TxBufferPtr_In1, BYTES_TO_TRANSFER, XAXIDMA_DMA_TO_DEVICE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XAxiDma_SimpleTransfer(&AxiDma_In2 ,(u32)TxBufferPtr_In2, BYTES_TO_TRANSFER, XAXIDMA_DMA_TO_DEVICE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XAxiDma_SimpleTransfer(&AxiDma_Out ,(u32) RxBufferPtr_Out, BYTES_TO_TRANSFER, XAXIDMA_DEVICE_TO_DMA);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	while (XAxiDma_Busy(&AxiDma_In1,XAXIDMA_DMA_TO_DEVICE)) {
				/* Wait */
		}

	while (XAxiDma_Busy(&AxiDma_In2,XAXIDMA_DMA_TO_DEVICE)) {
				/* Wait */
		}

	while (XAxiDma_Busy(&AxiDma_Out,XAXIDMA_DEVICE_TO_DMA)) {
				/* Wait */
		}

    Xil_DCacheInvalidateRange((u32)RxBufferPtr_Out, BYTES_TO_TRANSFER);

    xil_printf("\r\nDone sending data\r\n");

    for(int Index = 0; Index < N_samples; Index ++) {
    	printf("dma_in1 %d	dma_in2 %d	dma_out %d	\r\n",
    			TxBufferPtr_In1[Index], TxBufferPtr_In2[Index], RxBufferPtr_Out[Index]);
     }


   // Xil_DCacheDisable();
    //Xil_ICacheDisable();

    return 0;
}

/*int SD_Init () // used to mount the SD card
{
	FRESULT rc;
	rc = f_mount (&fatfs , "", 0) ;
	if (rc) {
		xil_printf (" ERROR : f_mount returned %d\r\n", rc) ;
		return XST_FAILURE ;
	}
	return XST_SUCCESS ;
}

int SD_TransferPartial ( char * FileName , u32 DestinationAddress , u32 ByteLength )
{
	FIL fil ;
	FRESULT rc;
	UINT br;

	rc = f_open (& fil , FileName , FA_READ ) ;
	if (rc) {
		xil_printf (" ERROR : f_open returned %d\r\n", rc) ;
		return XST_FAILURE ;
	}

	rc = f_lseek (& fil , 0) ;

	if (rc) {
		xil_printf (" ERROR : f_lseek returned %d\r\n", rc) ;
		return XST_FAILURE ;
	}

	rc = f_read (& fil , ( void *) DestinationAddress , ByteLength , &br) ;
	if (rc) {
		xil_printf (" ERROR : f_read returned %d\r\n", rc) ;
		return XST_FAILURE ;
	}

	rc = f_close (& fil) ;
	if (rc) {
		xil_printf (" ERROR : f_close returned %d\r\n", rc) ;
		return XST_FAILURE ;
	}
	return XST_SUCCESS ;
}*/


int XDcfg_TransferBitfile ( XDcfg * DcfgInstPtr , int PartialCfg, u32 PartialAddress , u32 bitfile_length_words )
{
	u32 IntrStsReg = 0;
	XDcfg_Transfer (DcfgInstPtr, (u8 *)PartialAddress ,bitfile_length_words/4,///4 is important
			(u8 *)XDCFG_DMA_INVALID_ADDRESS, 0, XDCFG_NON_SECURE_PCAP_WRITE ) ;

	xil_printf ("DPR: Transfer completed!\n");

	// Poll IXR_DMA_DONE
	IntrStsReg = XDcfg_IntrGetStatus ( DcfgInstPtr ) ;
	while ((IntrStsReg & XDCFG_IXR_DMA_DONE_MASK ) != XDCFG_IXR_DMA_DONE_MASK ) {
		IntrStsReg = XDcfg_IntrGetStatus ( DcfgInstPtr ) ;
	}


	if (PartialCfg) {
		/* Poll IXR_D_P_DONE */
		while (( IntrStsReg & XDCFG_IXR_D_P_DONE_MASK ) != XDCFG_IXR_D_P_DONE_MASK ) {
			IntrStsReg = XDcfg_IntrGetStatus ( DcfgInstPtr );
		}
	}else{

		/* Poll IXR_PCFG_DONE */
		while (( IntrStsReg & XDCFG_IXR_PCFG_DONE_MASK ) != XDCFG_IXR_PCFG_DONE_MASK ) {
			IntrStsReg = XDcfg_IntrGetStatus ( DcfgInstPtr);
		}

		// Enable the level - shifters from PS to PL.
		Xil_Out32 (SLCR_UNLOCK , SLCR_UNLOCK_VAL) ;
		Xil_Out32 (SLCR_LVL_SHFTR_EN , 0xF) ;
		Xil_Out32 (SLCR_LOCK , SLCR_LOCK_VAL) ;
	}

	// Clear interrupt bits
	XDcfg_IntrClear ( DcfgInstPtr , XDCFG_IXR_D_P_DONE_MASK ) ;
	XDcfg_IntrClear ( DcfgInstPtr , XDCFG_IXR_PCFG_DONE_MASK ) ;
	XDcfg_IntrClear ( DcfgInstPtr , XDCFG_IXR_DMA_DONE_MASK ) ;

	return XST_SUCCESS ;
}


int main()
{
	u32 PartialAddress ;
	int Status ;
	u32 IntrStsReg = 0;
	u32 StatusReg ;
	u32 PartialCfg = 0;

    print("\n\rHello World new test\n\r");

    test_dma();

    // Flush and disable Data Cache
     Xil_DCacheDisable () ;

    // Initialize SD controller and transfer partials to DDR
    //SD_Init () ;

    //SD_TransferPartial ("add.bin", PR_ADD_ADDR, (PR_ADD_LEN << 2)) ;
    //SD_TransferPartial ("sub.bin", PR_SUB_ADDR, (PR_SUB_LEN << 2) ) ;

    //xil_printf (" Partial Binaries transferred successfully !\r\n");

    // Invalidate and enable Data Cache
     Xil_DCacheEnable () ;

    // Initialize Device Configuration Interface
    DcfgInstPtr = &DcfgInstance ;

    XDcfg_0 = XDcfg_LookupConfig(XPAR_XDCFG_0_DEVICE_ID);

    Status = XDcfg_CfgInitialize (DcfgInstPtr, XDcfg_0 ,XDcfg_0->BaseAddr) ;
    if(Status != XST_SUCCESS) {
    	xil_printf ("(load_bit_to_pcap) XDcfg_CfgInitiliaze failed!\n");
    	return XST_FAILURE ;
    }

    // Check first time configuration or partial reconfiguration
    IntrStsReg = XDcfg_IntrGetStatus (DcfgInstPtr) ;
    if (IntrStsReg & XDCFG_IXR_DMA_DONE_MASK ) {
    	PartialCfg = 1;
    }

    // Enable the pcap clock .
    StatusReg = Xil_In32 (SLCR_PCAP_CLK_CTRL);
    if (!(StatusReg & SLCR_PCAP_CLK_CTRL_EN_MASK)){
    	Xil_Out32(SLCR_UNLOCK, SLCR_UNLOCK_VAL);
    	Xil_Out32(SLCR_PCAP_CLK_CTRL, (StatusReg | SLCR_PCAP_CLK_CTRL_EN_MASK));
    	Xil_Out32(SLCR_UNLOCK, SLCR_LOCK_VAL);
    }

    // Disable the level - shifters from PS to PL.
    if (!PartialCfg){
    	Xil_Out32(SLCR_UNLOCK, SLCR_UNLOCK_VAL);
    	Xil_Out32(SLCR_LVL_SHFTR_EN ,0xA);
    	Xil_Out32(SLCR_LOCK, SLCR_LOCK_VAL);
    }

    // Select PCAP interface for partial reconfiguration
    if(PartialCfg){
    	XDcfg_EnablePCAP(DcfgInstPtr);
    	XDcfg_SetControlRegister(DcfgInstPtr, XDCFG_CTRL_PCAP_PR_MASK);
    }

    // Clear the interrupt status bits
    XDcfg_IntrClear(DcfgInstPtr, (XDCFG_IXR_PCFG_DONE_MASK |XDCFG_IXR_D_P_DONE_MASK |XDCFG_IXR_DMA_DONE_MASK ) ) ;
    xil_printf ("Interrupt Status bits cleared!\n\r");

    // Check if DMA command queue is full
    StatusReg = XDcfg_ReadReg(DcfgInstPtr->Config.BaseAddr,XDCFG_STATUS_OFFSET);
    if((StatusReg & XDCFG_STATUS_DMA_CMD_Q_F_MASK) == XDCFG_STATUS_DMA_CMD_Q_F_MASK){
    	xil_printf("DMA command queue is full.\n\r");
    	return XST_FAILURE;
    }

    // Display Menu
    int Exit = 0;
    int OptionNext = 1; // start -up default
    while(Exit != 1){
    do{
    	print(" 1: Adder \n\r");
    	print (" 2: Sub \n\r");
    	print (" 0: Exit \n\r") ;
    	print ("> ") ;

    	OptionNext = inbyte();
    	if(isalpha(OptionNext)){
    		OptionNext = toupper(OptionNext);
    	}

    	xil_printf ("%c\n\r", OptionNext);
    	}while(!isdigit(OptionNext));

    switch(OptionNext){
    	case '0':
    		Exit = 1;
    		break;

    	case '1':
    		Reset = 1;
    		PartialAddress = PR_ADD_ADDR ;
    		xil_printf (" Starting ADDER Reconfiguration \n\r") ;
    		Status = XDcfg_TransferBitfile (DcfgInstPtr, PartialCfg, PartialAddress, PR_ADD_LEN);
    		if ( Status != XST_SUCCESS ) {
    			xil_printf (" Error : FPGA configuration failed !\n\r") ;
    			exit ( EXIT_FAILURE ) ;
    		}
    		test_dma();
    		xil_printf (" Multiplication Reconfiguration Completed !\n\r") ;
    		break ;

    	case '2':
    		Reset = 1;
    		PartialAddress = PR_SUB_ADDR;
    		xil_printf (" Starting SUB Reconfiguration \n\r") ;
    		Status = XDcfg_TransferBitfile ( DcfgInstPtr, PartialCfg,PartialAddress, PR_SUB_LEN);
    		if ( Status != XST_SUCCESS ) {
    			xil_printf (" Error : FPGA configuration failed !\n\r") ;
    			exit ( EXIT_FAILURE ) ;
    		}
    		test_dma();
    		xil_printf (" Addition Reconfiguration Completed !\n\r") ;
    		break ;

    	default :
    		break;
    	}
    }
    return 0;
}

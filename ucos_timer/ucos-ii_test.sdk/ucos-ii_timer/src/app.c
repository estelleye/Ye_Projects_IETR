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
*   This demonstration project illustrate a basic uC/OS-II project with simple "hello world" output.
*
*   By default some configuration steps are required to compile this example :
*
*   1. Include the require Micrium software components
*       In the BSP setting dialog in the "overview" section of the left pane the following libraries
*       should be added to the BSP :
*
*           ucos_common
*           ucos_osii
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
#include  <Source/ucos_ii.h>
#include  <ucos_bsp.h>

#include "port/guest_os_parameters.h"
#include "port/guest_os_fctns.h"
#include "port/guest_os_vpsr.h"



/*
*********************************************************************************************************
*                                      LOCAL FUNCTION PROTOTYPES
*********************************************************************************************************
*/
VM_PSR vpsr;
void  MainTask (void *p_arg);
//void test();

//#define       TASK_STK_SIZE            512

//static  OS_STK        TaskStk[TASK_STK_SIZE];

//static  void  Task            (void *p_arg);

//        void  print              (char *str);
//CPU_INT32U  timerVaule0, timerVaule1;

//AXITIMER_HANDLE Timer0;

/*
*********************************************************************************************************
*                                               main()
*
* Description : Entry point for C code.
*
*********************************************************************************************************
*/

int main()
/*{
    guest_IRQ_Register(OS_CPU_ARM_ExceptIrqHndlr, (unsigned int)&vpsr);
    //guest_OS_Timer_Register(OS_TICKS_PER_SEC);
	//guest_OS_Timer_Enable();
	//UCOSStartup(MainTask);
	//guest_print("****** uC/OS-II start ******\r\n");
	//guest_OS_Timer_Register(OS_TICKS_PER_SEC);
	//guest_OS_Timer_Enable();
    UCOSStartup(MainTask);
    //test();
	//task();
    return 0;
}*/
{

    //print("****** uC/OS-II start ******\r\n");

    guest_IRQ_Register(OS_CPU_ARM_ExceptIrqHndlr, (unsigned int)&vpsr);


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
//void test()
{
	guest_OS_Timer_Register(OS_TICKS_PER_SEC);
	guest_OS_Timer_Enable();


	UCOS_Print("Hello world from 2\r\n");



    //Timer0 = AXITimer_Init(0);
    //AXITimer_OptSet(Timer0, 0,  AXITIMER_OPT_MODE | AXITIMER_OPT_AUTO_RELOAD);//counting up and auto counting
    //AXITimer_LoadSet(Timer0, 0, 0);
    //AXITimer_Start(Timer0, 0);
    //timerVaule0 = AXITimer_CtrGet(Timer0, 0);

	//UCOS_Print ("Hello world from ucos_2\r\n");

	//UCOS_Print ("Hello world from the main task\r\n");//no initial
	//guest_print  ("Hello world from the main task\r\n");
	//xil_printf ("first: %d", timerVaule0);

   // while (DEF_TRUE) {
    	//guest_print ("Hello hello hello\r\n");
    //	UCOS_Print ("Hello GPOS Hello GPOS\r\n");
    	//timerVaule1 = AXITimer_CtrGet(Timer0, 0);
    /*	if(timerVaule1 != timerVaule0)
    	{
    		AXITimer_LoadSet(Timer0, 0, timerVaule1);
    		AXITimer_Start(Timer0, 0);
    		xil_printf ("Hello Start\r\n");
    		timerVaule1 = timerVaule0;
    	}else{
    		AXITimer_Stop(Timer0, 0);
    		xil_printf ("stop: %d", timerVaule0);
    	}*/
    	//AXITimer_LoadSet(Timer0, 0, timerVaule0);
    	//AXITimer_Start(Timer0, 0);
    	//if(timerVaule0 != timerVaule1)
        //OSTimeDlyHMSM(0, 0, 0, 10);
        //UCOS_Print("Periodic output every 10 seconds from the main task\r\n");//33ms to switch
        //guest_print("Periodic output every 10 seconds from the main task\r\n");
    	//timerVaule1 = timerVaule0;
   // }


/*	   OSTaskCreateExt(Task,
	                   (void       *)0,
	                   (OS_STK     *)&TaskStk[TASK_STK_SIZE - 1],
	                   (OS_PRIO     )2,
	                   (OS_PRIO     )2,
	                   (OS_STK     *)&TaskStk[0],
	                   (CPU_STK_SIZE)TASK_STK_SIZE,
	                   (void       *)0,
	                   (CPU_INT16U  )(OS_TASK_OPT_STK_CHK | OS_TASK_OPT_STK_CLR));*/
	 while (DEF_ON) {                                            /* Task body, always written as an infinite loop.       */
	    	//OSTimeDlyHMSM(0, 0, 1, 000);                              /* Waits for 1-second.                                  */

	    	UCOS_Print("2\r\n");                                          /* Prints 1 to the UART.                                */

	    	//*(unsigned int*)(0xf8f00600) = 33332;
	    }

}


/*
static  void  Task (void *p_arg)
{
    (void)p_arg;

    //print("M");

	UCOS_Print("Task #1 Started\r\n");

	guest_OS_Timer_Register(OS_TICKS_PER_SEC);
	guest_OS_Timer_Enable();
	UCOS_Print("before while\r\n");
    while (DEF_ON) {                                            /* Task body, always written as an infinite loop.       */
    	//OSTimeDlyHMSM(0, 0, 1, 000);                              /* Waits for 1-second.                                  */

    	//UCOS_Print("Hello\r\n");                                         // /* Prints 1 to the UART.                                */

    	//*(unsigned int*)(0xf8f00600) = 33332;
   // }
//}*/


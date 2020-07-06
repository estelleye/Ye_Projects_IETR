/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * VHA.c: simple Vertical Handover Algorithm between Wimax and WIFI
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   115200
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "xuartps.h"
#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "include/devcfg.h"
#include "include/ff.h"
#include "xil_cache.h"

#define STDIN_BASEADDRESS 0xE0001000  //UART address


#define PARTIAL_RECONFIG_Switch_not_Led_ADDR 0x300000
#define PARTIAL_RECONFIG_Switch_Led_ADDR 0x400000

#define PARTIAL_BITFILE_LEN_Switch_Led  0xB000 //44292

static FATFS fatfs;
static XDcfg *XDcfg_0;

int SD_Init()
{
	FRESULT rc;

	rc = f_mount(0, &fatfs);
	if (rc) {
		xil_printf(" ERROR : f_mount returned %d\r\n", rc);
		return XST_FAILURE;
	}
	//xil_printf(" mounted  %d\r\n", rc);
	return XST_SUCCESS;
}

int SD_TransferPartial(char *FileName, u32 DestinationAddress, u32 ByteLength)
{
	FIL fil;
	FRESULT rc;
	UINT br;
	//
	rc = f_open(&fil, FileName, FA_READ);
	//printf("trying opening  %d\r\n", rc);
	if (rc) {
		xil_printf(" ERROR : f_open returned %d\r\n", rc);
		return XST_FAILURE;
	}
	//printf("filed opened %d\r\n", rc);
	rc = f_lseek(&fil, 0);
	if (rc) {
		xil_printf(" ERROR : f_lseek returned %d\r\n", rc);
		return XST_FAILURE;
	}

	rc = f_read(&fil, (void*) DestinationAddress, ByteLength, &br);
	if (rc) {
		xil_printf(" ERROR : f_read returned %d\r\n", rc);
		return XST_FAILURE;
	}

	rc = f_close(&fil);
	if (rc) {
		xil_printf(" ERROR : f_close returned %d\r\n", rc);
		return XST_FAILURE;
	}

	Xil_DCacheFlush();

	return XST_SUCCESS;
}

void Transfer_Partial_Bit_Streams(int setting)
{
	int Status;
	

			if (setting==0) 
				{
				Status = XDcfg_TransferBitfile(XDcfg_0, PARTIAL_RECONFIG_Switch_not_Led_ADDR, (PARTIAL_BITFILE_LEN_Switch_Led >> 2));
				if(Status != XST_SUCCESS) {
								xil_printf("ERROR : FPGA configuration failed!\n\r\n\r");
								exit(EXIT_FAILURE);
							}

				}
			else
			{
				Status = XDcfg_TransferBitfile(XDcfg_0, PARTIAL_RECONFIG_Switch_Led_ADDR, (PARTIAL_BITFILE_LEN_Switch_Led >> 2));
				if	(Status != XST_SUCCESS) {
								xil_printf("ERROR : FPGA configuration failed!\n\r\n\r");
								exit(EXIT_FAILURE);
							}
			}


			return;
	


}




int main()
{
	
	init_platform();

	Xil_DCacheDisable();
	xil_printf("STARTED!!\n\r");
	// init SD card and transfer all partial bit streams to memory
	SD_Init();
	
	SD_TransferPartial("pr1.bin", PARTIAL_RECONFIG_Switch_Led_ADDR, PARTIAL_BITFILE_LEN_Switch_Led);
	SD_TransferPartial("pr2.bin", PARTIAL_RECONFIG_Switch_not_Led_ADDR, PARTIAL_BITFILE_LEN_Switch_Led);
	
	
	xil_printf("Partial Bit Transfered \n\r");
	XDcfg_0 = XDcfg_Initialize(XPAR_XDCFG_0_DEVICE_ID);

	while (1)
	{
		Transfer_Partial_Bit_Streams(1)
		sleep (5);
		Transfer_Partial_Bit_Streams(0);
		sleep (5);
		
	}
	
	cleanup_platform();
	return 0;
}

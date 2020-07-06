/* print.c -- print a string on the output device.
 *
 * Copyright (c) 1995 Cygnus Support
 *
 * The authors hereby grant permission to use, copy, modify, distribute,
 * and license this software and its documentation for any purpose, provided
 * that existing copyright notices are retained in all copies and that this
 * notice is included verbatim in any distributions. No written agreement,
 * license, or royalty fee is required for any of the authorized uses.
 * Modifications to this software may be copyrighted by their authors
 * and need not follow the licensing terms described here, provided that
 * the new terms are clearly indicated on the first page of each file where
 * they apply.
 *
 */

/*
 * print -- do a raw print of a string
 */
#include "xil_printf.h"

//#include <C:/Xilinx/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include/stdlib.h>
//#include <C:/Xilinx/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include/sys/unistd.h>

// Xilinx BSP Files
#include "xil_printf.h"


void print(const char *ptr)
{

#ifdef STDOUT_BASEADDRESS
  while (*ptr) {
    outbyte (*ptr++);
  }
#else
(void)ptr;
#endif
/*
#if !DEMO_UART
  while (*ptr) {
    outbyte (*ptr++);
  }
#endif*/
}
@********************************************************************************************************
@                                                uC/CPU
@                                    CPU CONFIGURATION & PORT LAYER
@
@                          (c) Copyright 2004-2015 Micrium, Inc. Weston, FL
@
@               All rights reserved.  Protected by international copyright laws.
@
@               uC/CPU is provided in source form to registered licensees ONLY.  It is 
@               illegal to distribute this source code to any third party unless you receive 
@               written permission by an authorized Micrium representative.  Knowledge of 
@               the source code may NOT be used to develop a similar product.
@
@               Please help us continue to provide the Embedded community with the finest 
@               software available.  Your honesty is greatly appreciated.
@
@               You can find our product's user manual, API reference, release notes and
@               more information at https://doc.micrium.com.
@               You can contact us at www.micrium.com.
@********************************************************************************************************

@********************************************************************************************************
@
@                                            CPU PORT FILE
@
@                                        Generic ARM-Cortex-A
@                                               GNU GCC
@
@ Filename      : cpu_a.s
@ Version       : V1.30.02.00
@ Programmer(s) : JBL
@********************************************************************************************************

#include "D:/Xilinx_Vivado/ucos-ii_test/ucos-ii_test.sdk/ucos-ii_timer/src/port/guest_os_assembly.h"
@********************************************************************************************************
@                                           .global FUNCTIONS
@********************************************************************************************************

    .global  CPU_SR_Save
    .global  CPU_SR_Restore

    .global  CPU_IntDis
    .global  CPU_IntEn

        .globl  CPU_IRQ_Dis
    .globl  CPU_IRQ_En

    .globl  CPU_FIQ_Dis
    .globl  CPU_FIQ_En

    .global  CPU_WaitForInt
    .global  CPU_WaitForEvent

    .global  CPU_CntLeadZeros
    .global  CPU_CntTrailZeros

.equ    CPU_ARM_CTRL_INT_DIS,    0xC0                            /* Disable both FIQ & IRQ               */
.equ    CPU_ARM_CTRL_FIQ_DIS,    0x40                            /* Disable FIQ.                         */
.equ    CPU_ARM_CTRL_IRQ_DIS,    0x80                            /* Disable IRQ.                         */


@********************************************************************************************************
@                                      CODE GENERATION DIRECTIVES
@********************************************************************************************************

     .code 32


@********************************************************************************************************
@                                     ENABLE & DISABLE INTERRUPTS
@
@ Description : Disable/Enable IRQs & FIQs.
@
@ Prototypes  : void  CPU_IntEn (void)@
@               void  CPU_IntDis(void)@
@********************************************************************************************************

    .type   CPU_IntDis, %function
CPU_IntDis:
    push	{R1}
    GUEST_OS_VCPSR_NA_READ     	R0, R1
    ORR     R0, R0, #CPU_ARM_CTRL_INT_DIS                 // Set IRQ and FIQ bits in CPSR to disable all interrupts.
    GUEST_OS_VCPSR_NA_WRITE		R0, R1
    pop		{R1}
    BX      LR

    .type   CPU_IntEn, %function
CPU_IntEn:
     push	{R1}
    GUEST_OS_VCPSR_NA_READ     	R0, R1
    BIC     R0, R0, #CPU_ARM_CTRL_INT_DIS                 // Clear IRQ and FIQ bits in CPSR to enable all interrupts.
    GUEST_OS_VCPSR_NA_WRITE		R0, R1
    GUEST_OS_MASKEDIRQ_CHECK 	R0
    pop		{R1}
    BX      LR


@********************************************************************************************************
@                                      CRITICAL SECTION FUNCTIONS
@
@ Description : Disable/Enable interrupts by preserving the state of interrupts.  Generally speaking, the
@               state of the interrupt disable flag is stored in the local variable 'cpu_sr' & interrupts
@               are then disabled ('cpu_sr' is allocated in all functions that need to disable interrupts).
@               The previous interrupt state is restored by copying 'cpu_sr' into the CPU's status register.
@
@ Prototypes  : CPU_SR  CPU_SR_Save   (void)@
@               void    CPU_SR_Restore(CPU_SR  cpu_sr)@
@
@ Note(s)     : (1) These functions are used in general like this :
@
@                       void  Task (void  *p_arg)
@                       {
@                           CPU_SR_ALLOC()@                     /* Allocate storage for CPU status register */
@                               :
@                               :
@                           CPU_CRITICAL_ENTER()@               /* cpu_sr = CPU_SR_Save()@                  */
@                               :
@                               :
@                           CPU_CRITICAL_EXIT()@                /* CPU_SR_Restore(cpu_sr)@                  */
@                               :
@                       }
@********************************************************************************************************

    .type   CPU_SR_Save, %function
CPU_SR_Save:
 	push	{R1}
 	GUEST_OS_VCPSR_READ R0, R1					// Get virtual CPSR --> R0
	push 	{R0}
	ORR     R0, R0, #CPU_ARM_CTRL_INT_DIS		// Set IRQ and FIQ bits in CPSR to disable all interrupts.
	GUEST_OS_VCPSR_WRITE R0, R1					// Write new CPSR.I flag into VCPSR_NA
	pop		{R0}
	pop		{R1}
	BX      LR
    .type   CPU_SR_Restore, %function
CPU_SR_Restore:
	push	{R0,R1}
    GUEST_OS_VCPSR_WRITE 	R0, R1				// R0 --> VCPSR
    and		R0, R0, #0x80						// Check if VCPSR.I (R0) is masked
    cmp		R0, #0
    bne		CPU_SR_Restore_Exit					// if VCPSR.I != 0 (IRQ is masked)
    GUEST_OS_MASKEDIRQ_CHECK R0
CPU_SR_Restore_Exit:
    pop		{R0,R1}
    BX      LR


CPU_IRQ_Dis:
    push	{R1}
    GUEST_OS_VCPSR_NA_READ     	R0, R1
    ORR     R0, R0, #CPU_ARM_CTRL_IRQ_DIS                 // Set IRQ and FIQ bits in CPSR to disable all interrupts.
    GUEST_OS_VCPSR_NA_WRITE		R0, R1
    pop		{R1}
    BX      LR

CPU_IRQ_En:
    push	{R1}
    GUEST_OS_VCPSR_NA_READ     	R0, R1
    BIC     R0, R0, #CPU_ARM_CTRL_IRQ_DIS                 // Clear IRQ and FIQ bits in CPSR to enable all interrupts.
    GUEST_OS_VCPSR_NA_WRITE		R0, R1
    GUEST_OS_MASKEDIRQ_CHECK 	R0
    pop		{R1}
    BX      LR

CPU_FIQ_Dis:
    push	{R1}
    GUEST_OS_VCPSR_NA_READ     	R0, R1
    ORR     R0, R0, #CPU_ARM_CTRL_FIQ_DIS                 // Set IRQ and FIQ bits in CPSR to disable all interrupts.
    GUEST_OS_VCPSR_NA_WRITE		R0, R1
    pop		{R1}
    BX      LR

CPU_FIQ_En:
    push	{R1}
    GUEST_OS_VCPSR_NA_READ     	R0, R1
    BIC     R0, R0, #CPU_ARM_CTRL_FIQ_DIS                 // Clear IRQ and FIQ bits in CPSR to enable all interrupts.
    GUEST_OS_VCPSR_NA_WRITE		R0, R1
    GUEST_OS_MASKEDIRQ_CHECK 	R0
    pop		{R1}
    BX      LR


@********************************************************************************************************
@                                         WAIT FOR INTERRUPT
@
@ Description : Enters sleep state, which will be exited when an interrupt is received.
@
@ Prototypes  : void  CPU_WaitForInt (void)
@
@ Argument(s) : none.
@********************************************************************************************************

    .type   CPU_WaitForInt, %function
CPU_WaitForInt:
        DSB
        WFI                                     @ Wait for interrupt
        BX      LR



@********************************************************************************************************
@                                         WAIT FOR EXCEPTION
@
@ Description : Enters sleep state, which will be exited when an exception is received.
@
@ Prototypes  : void  CPU_WaitForExcept (void)
@
@ Argument(s) : none.
@********************************************************************************************************

    .type   CPU_WaitForEvent, %function
CPU_WaitForEvent:
        DSB
        WFE                                     @ Wait for exception
        BX      LR


@********************************************************************************************************
@                                         CPU_CntLeadZeros()
@                                        COUNT LEADING ZEROS
@
@ Description : Counts the number of contiguous, most-significant, leading zero bits before the first
@               binary one bit in a data value.
@
@ Prototype   : CPU_DATA  CPU_CntLeadZeros(CPU_DATA  val);
@
@ Argument(s) : val         Data value to count leading zero bits.
@
@ Return(s)   : Number of contiguous, most-significant, leading zero bits in 'val'.
@
@ Caller(s)   : Application.
@
@               This function is an INTERNAL CPU module function but MAY be called by application function(s).
@
@ Note(s)     : (1) If the argument is zero, the value 32 is returned.
@
@               (2) MUST be implemented in cpu_a.asm if and only if CPU_CFG_LEAD_ZEROS_ASM_PRESENT is
@                   #define'd in 'cpu_cfg.h' or 'cpu.h'.
@********************************************************************************************************

    .type   CPU_CntLeadZeros, %function
CPU_CntLeadZeros:
        CLZ     R0, R0                                          @ Count leading zeros
        BX      LR


@********************************************************************************************************
@                                         CPU_CntTrailZeros()
@                                        COUNT TRAILING ZEROS
@
@ Description : Counts the number of contiguous, least-significant, trailing zero bits before the
@                   first binary one bit in a data value.
@
@ Prototype   : CPU_DATA  CPU_CntTrailZeros(CPU_DATA  val);
@
@ Argument(s) : val         Data value to count trailing zero bits.
@
@ Return(s)   : Number of contiguous, least-significant, trailing zero bits in 'val'.
@
@ Caller(s)   : Application.
@
@               This function is an INTERNAL CPU module function but MAY be called by application
@               function(s).
@
@ Note(s)     : (1) (a) Supports 32-bit data value size as configured by 'CPU_DATA' (see 'cpu.h
@                       CPU WORD CONFIGURATION  Note #1').
@
@                   (b) For 32-bit values :
@
@                             b31  b30  b29  b28  b27  ...  b02  b01  b00    # Trailing Zeros
@                             ---  ---  ---  ---  ---       ---  ---  ---    ----------------
@                              x    x    x    x    x         x    x    1            0
@                              x    x    x    x    x         x    1    0            1
@                              x    x    x    x    x         1    0    0            2
@                              :    :    :    :    :         :    :    :            :
@                              :    :    :    :    :         :    :    :            :
@                              x    x    x    x    1         0    0    0           27
@                              x    x    x    1    0         0    0    0           28
@                              x    x    1    0    0         0    0    0           29
@                              x    1    0    0    0         0    0    0           30
@                              1    0    0    0    0         0    0    0           31
@                              0    0    0    0    0         0    0    0           32
@
@
@               (2) MUST be defined in 'cpu_a.asm' (or 'cpu_c.c') if CPU_CFG_TRAIL_ZEROS_ASM_PRESENT is
@                   #define'd in 'cpu_cfg.h' or 'cpu.h'.
@********************************************************************************************************

    .type   CPU_CntTrailZeros, %function
CPU_CntTrailZeros:
        RBIT    R0, R0                          @ Reverse bits
        CLZ     R0, R0                          @ Count trailing zeros
        BX      LR


@********************************************************************************************************
@                                     CPU ASSEMBLY PORT FILE END
@********************************************************************************************************

    .end

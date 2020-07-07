@********************************************************************************************************
@                                                uC/CPU
@                                    CPU CONFIGURATION & PORT LAYER
@
@                          (c) Copyright 2004-2017; Micrium, Inc.; Weston, FL
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
@ Version       : V1.31.02
@ Programmer(s) : JBL
@********************************************************************************************************

#include "D:/vivado_2017.1/ucos_dma/kerone_dma.sdk/ucos_dma/src/port/guest_os_assembly.h"
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

        .globl  CPU_PMU_Dis
    .globl  CPU_PMU_En
    .globl  CPU_PMU_Rst

    .globl  CPU_PMU_CtrDis
    .globl  CPU_PMU_CtrEn
    .globl  CPU_PMU_CtrEventSet
    .globl  CPU_PMU_CtrRst
    
    .globl  CPU_PMU_CtrGet
    .globl  CPU_PMU_CtrCycleEn
    .globl  CPU_PMU_CtrCycleDis
    .globl  CPU_PMU_CtrCycleGet
    .globl  CPU_PMU_CtrCycleRst

    .globl  CPU_MMU_En
    .globl  CPU_MMU_Dis
    .globl  CPU_MMU_RegionEn
    .globl  CPU_MMU_RegionDis

    .globl  CPU_CtxID_Set
    .globl  CPU_CtxID_Get

    .global  CPU_WaitForInt
    .global  CPU_WaitForEvent

    .global  CPU_CntLeadZeros
    .global  CPU_CntTrailZeros


.equ    CPU_ARM_CTRL_INT_DIS,    0xC0                            /* Disable both FIQ & IRQ               */
.equ    CPU_ARM_CTRL_FIQ_DIS,    0x40                            /* Disable FIQ.                         */
.equ    CPU_ARM_CTRL_IRQ_DIS,    0x80                            /* Disable IRQ.                         */

.equ    CPU_ARM_BIT_CNTES_C,     0x80000000                      /* Cycle counter enable set.            */
.equ    CPU_ARM_BIT_PMNC_E,      0x00000001                      /* All counter enable bits.             */
.equ    CPU_ARM_BIT_PMNC_P,      0x00000002                      /* Event counter reset.                 */
.equ    CPU_ARM_BIT_PMNC_C,      0x00000004                      /* Cycle counter reset.                 */
.equ    CPU_ARM_BIT_PMNC_RST,    0x00000006                      /* Reset all counters.                  */

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

CPU_IntDis:
    push	{R1}
    GUEST_OS_VCPSR_NA_READ     	R0, R1
    ORR     R0, R0, #CPU_ARM_CTRL_INT_DIS                 // Set IRQ and FIQ bits in CPSR to disable all interrupts.
    GUEST_OS_VCPSR_NA_WRITE		R0, R1
    pop		{R1}
    BX      LR

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

CPU_SR_Save:
 	push	{R1}
 	GUEST_OS_VCPSR_READ R0, R1					// Get virtual CPSR --> R0
	push 	{R0}
	ORR     R0, R0, #CPU_ARM_CTRL_INT_DIS		// Set IRQ and FIQ bits in CPSR to disable all interrupts.
	GUEST_OS_VCPSR_WRITE R0, R1					// Write new CPSR.I flag into VCPSR_NA
	pop		{R0}
	pop		{R1}
	BX      LR                                  // Return the original CPSR contents in R0.

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


CPU_PMU_Dis:
        MRC     P15, 0, R0, C9, C12, 0                          /* Read PMNC Register.                */
        BIC     R0, R0, #CPU_ARM_BIT_PMNC_C                     /* Clear enable bit.                  */
        MCR     P15, 0, R0, C9, C12, 0                          /* Write PMNC Register.               */
        BX      LR

CPU_PMU_En:
        MRC     P15, 0, R0, C9, C12, 0                          /* Read PMNC Register.                 */
        ORR     R0, R0, #CPU_ARM_BIT_PMNC_E                     /* Set all counter enable bit.         */
        MCR     P15, 0, R0, C9, C12, 0                          /* Write PMNC Register.                */
        BX      LR

CPU_PMU_Rst:
        MRC     P15, 0, R0, C9, C12, 0                          /* Read PMNC Register.                */
        ORR     R0, R0, #CPU_ARM_BIT_PMNC_RST                   /* Resets all counters.               */
        MCR     P15, 0, R0, C9, C12, 0                          /* Write PMNC Register.               */
        BX      LR

CPU_PMU_CtrDis:
        CMP      R0, #2                                         /* Argument check.                 */
        BXHI     LR

        MOV      R1, #1
        LSL      R0, R1, R0
        MCR      P15, 0, R0, C9, C12, 2                         /* Write CNTENC Register.          */
        BX       LR

CPU_PMU_CtrEn:
        CMP      R0, #0x02                                      /* Argument check.                */
        BXHI     LR

        MOV      R1, #0x01
        LSL      R0, R1, R0
        MCR      P15, 0, R0, C9, C12, 1                         /* Write CNTENS Register.         */
        BX       LR


CPU_PMU_CtrEventSet:
        CMP      R0, #0x02
        BXHI     LR

        MRC      P15, 0, R2, C9, C12, 5                         /* Read  PMNXSEL Register             */
        BIC      R2, R2, #0x0000001F
        ORR      R2, R2, R0
        MCR      P15, 0, R2, C9, C12, 5                         /* Write PMNXSEL Register             */

        MRC      P15, 0, R2, C9, C13, 1                         /* Read  EVTSELx Register             */
        BIC      R2, R2, #0x000000FF
        ORR      R2, R2, R1
        MCR      P15, 0, R2, C9, C13, 1                         /* Write EVTSELx Register             */
        BX       LR

CPU_PMU_CtrGet:
        CMP      R0, #0x02
        BXHI     LR

        MRC      P15, 0, R1, C9, C12, 5                         /* Read  PMNXSEL Register        */
        BIC      R1, R1, #0x0000001F
        ORR      R1, R1, R0
        MCR      P15, 0, R1, C9, C12, 5                         /* Write PMNXSEL Register        */

        MRC      P15, 0, R0, C9, C13, 2                         /* Read  PMNx    Register        */
        BX       LR


CPU_PMU_CtrRst:
        CMP      R0, #2
        BXHI     LR

        MRC      P15, 0, R1, C9, C12, 5                         /* Read  PMNXSEL Register.            */
        BIC      R1, R1, #0x0000001F
        ORR      R1, R1, R0
        MCR      P15, 0, R1, C9, C12, 5                         /* Write PMNXSEL Register.            */

        MOV      R0, #0
        MCR      P15, 0, R0, C9, C13, 2                         /* Write PMNx    Register.            */
        BX       LR

CPU_PMU_CtrCycleDis:
        MOV      R0, #CPU_ARM_BIT_CNTES_C
        MCR      P15, 0, R0, C9, C12, 2                         /* Write CNTENC Register.              */
        BX       LR


CPU_PMU_CtrCycleEn:
        MOV   R0, #CPU_ARM_BIT_CNTES_C
        MCR   P15, 0, R0, C9, C12, 1                            /* Write CNTENS Register.            */
        BX    LR


CPU_PMU_CtrCycleGet:
        MRC     P15, 0, R0, C9, C13, 0                          /* Read CCNT Register.                 */
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


CPU_PMU_CtrCycleRst:
        MRC     P15, 0, R0, C9, C12, 0                          /* Read PMNC Register.                */
        ORR     R0, R0, #CPU_ARM_BIT_PMNC_C                     /* Resets all counters.               */
        MCR     P15, 0, R0, C9, C12, 0                          /* Write PMNC Register.               */
        BX      LR


CPU_MMU_En:
        MRC     P15, 0, R0, C1, C0, 0                            /* Read CP15 register 1              */
        ORR     R0, R0, #0x1
        DSB
        MCR     P15, 0, R0, C1, C0, 0                            /* Enable MMU                        */
        ISB
        BX      LR

CPU_MMU_Dis:
        MRC     P15, 0, R0, C1, C0, 0                            /* Read CP15 register 1               */
        BIC     R0, R0, #0x1
        DSB
        MCR     P15, 0, R0, C1, C0, 0                            /* Disable MMU                        */
        BX      LR

CPU_MMU_RegionEn:
         PUSH   {R4, R5}
         MRC    P15, 0, R4, C0, C0, 4                           /* Read MPU number of available regions.                  */
         LSR    R4, R4, #0x08
         AND    R4, R4, #0x0F
         CMP    R0, R4                                          /* Compare region number with maximun number of regions.  */
         BPL    CPU_MMU_RegionEnExitFail

         CMP    R3, #0x1F                                       /* If size < minimal size return fail                */
         BLT    CPU_MMU_RegionEnExitFail

         MCR    P15, 0, R0, C6, C2, 0                           /* Write MPU memory region number register.          */
         MRC    P15, 0, R4, C6, C1, 2                           /* Read data MPU region size and enable register.    */
         AND    R4, R4, #0x01                                   /* Check if region is enabled.                       */
         CMP    R4, #0x00                                       /* If region is already enable, return fail          */
         BNE    CPU_MMU_RegionEnExitFail

         MCR    P15, 0, R1, C6, C1, 0                           /* Write MPU base address register.                  */
         LDR    R4, [SP, #8]                                    /* Load access parameter.                            */
         MCR    P15, 0, R4, C6, C1, 4                           /* Write Region acces control register.              */

         LSL    R4, R2, #0x08                                   /* Set the sub-region disable field [15:8]           */
         CLZ    R5, R3                                          /* Calculate the size field (log2(size))             */
         RSB    R5, R5, #0x1F
         LSL    R5, R5, #0x01
         ORR    R4, R4, R5
         ORR    R4, R4, #0x01
         MCR    P15, 0, R4, C6, C1, 2                           /* Write Data MPU region Size and enable register.   */
         MOV    R0, #0x1                                        /* return 'DEF_OK'                                   */
         POP    {R4, R5}
         BX     LR

CPU_MMU_RegionEnExitFail:
         MOV    R0, #0x0                                        /* return 'DEF_FAIL'                                 */
         POP    {R4, R5}
         BX     LR


CPU_MMU_RegionDis:
         MRC    P15, 0, R1, C0, C0, 4                           /* Read MPU number of available regions.                   */
         LSR    R1, R1, #0x08
         AND    R1, R1, #0x0F
         CMP    R0, R1                                          /* Compare region number with maximun number of regions.   */
         BPL    CPU_MMU_RegionDisExit
         MOV    R1, #0x00
         MCR    P15, 0, R1, C6, C1, 2                           /* Write Data MPU region Size and enable register.         */

CPU_MMU_RegionDisExit:
         BX     LR


CPU_CtxID_Set:
        MCR     P15, 0, R0, C13, C0, 1
        BX      LR

CPU_CtxID_Get:
        MRC     P15, 0, R0, C13, C0, 1
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


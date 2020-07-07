/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*
*
*                           (c) Copyright 2009-2017; Micrium, Inc.; Weston, FL
*                    All rights reserved.  Protected by international copyright laws.
*
*                                      Generic ARM Cortex-A Port
*
* File      : OS_CPU.H
* Version   : V2.92.14
* By        : JBL
*
* LICENSING TERMS:
* ---------------
*           uC/OS-II is provided in source form for FREE short-term evaluation, for educational use or
*           for peaceful research.  If you plan or intend to use uC/OS-II in a commercial application/
*           product then, you need to contact Micrium to properly license uC/OS-II for its use in your
*           application/product.   We provide ALL the source code for your convenience and to help you
*           experience uC/OS-II.  The fact that the source is provided does NOT mean that you can use
*           it commercially without paying a licensing fee.
*
*           Knowledge of the source code may NOT be used to develop a similar product.
*
*           Please help us continue to provide the embedded community with the finest software available.
*           Your honesty is greatly appreciated.
*
*           You can contact us at www.micrium.com, or by phone at +1 (954) 217-2036.
*
* For       : ARM Cortex-A50
* Mode      : ARM64
* Toolchain : GNU
*
* Note(s) : None.
*********************************************************************************************************
*/

#ifndef  OS_CPU_H
#define  OS_CPU_H

#ifdef   OS_CPU_GLOBALS
#define  OS_CPU_EXT
#else
#define  OS_CPU_EXT  extern
#endif

#include <cpu.h>


#ifndef  OS_CPU_EXCEPT_STK_SIZE
#define  OS_CPU_EXCEPT_STK_SIZE    1024u                         /* Default exception stack size is 128 OS_STK entries.  */
#endif


/*
*********************************************************************************************************
*                                       CONFIGURATION DEFAULTS
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                               DEFINES
*********************************************************************************************************
*/

#define  OS_CPU_ARM_ENDIAN_LITTLE                         1u
#define  OS_CPU_ARM_ENDIAN_BIG                            2u


#if (defined(__BYTE_ORDER__) && \
            (__BYTE_ORDER__ == __ORDER_BIG_ENDIAN__))
#define  OS_CPU_ARM_ENDIAN_TYPE            OS_CPU_ARM_ENDIAN_BIG
#else
#define  OS_CPU_ARM_ENDIAN_TYPE            OS_CPU_ARM_ENDIAN_LITTLE
#endif

#ifndef  OS_CPU_INT_DIS_MEAS_EN
#define  OS_CPU_INT_DIS_MEAS_EN    0u                           /* Intrrupt dis time measurement disabled by default  */
#endif

/*
*********************************************************************************************************
*                                       ARM EXCEPTION DEFINES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                              DATA TYPES
*                                         (Compiler Specific)
*********************************************************************************************************
*/

typedef  CPU_BOOLEAN BOOLEAN;
typedef  CPU_INT08U  INT8U;                    /* Unsigned  8 bit quantity                           */
typedef  CPU_INT08S  INT8S;                    /* Signed    8 bit quantity                           */
typedef  CPU_INT16U  INT16U;                   /* Unsigned 16 bit quantity                           */
typedef  CPU_INT16S  INT16S;                   /* Signed   16 bit quantity                           */
typedef  CPU_INT32U  INT32U;                   /* Unsigned 32 bit quantity                           */
typedef  CPU_INT32S  INT32S;                   /* Signed   32 bit quantity                           */
typedef  CPU_INT64U  INT64U;                   /* Unsigned 64 bit quantity                           */
typedef  CPU_INT64S  INT64S;                   /* Signed   64 bit quantity                           */
typedef  CPU_FP32    FP32;                     /* Single precision floating point                    */
typedef  CPU_FP64    FP64;                     /* Double precision floating point                    */

typedef  CPU_STK     OS_STK;                   /* Each stack entry is 32-bit wide                    */
typedef  CPU_SR      OS_CPU_SR;                /* Define size of CPU status register (PSR = 32 bits) */

/*
*********************************************************************************************************
*                                               MACROS
*********************************************************************************************************
*/

#define  OS_TASK_SW()                           OSCtxSw()
#define  OS_STK_GROWTH                           1u         /* Stack grows from HIGH to LOW memory on ARM        */

/*
*********************************************************************************************************
*                                                ARM
*
* Method #1:  Disable/Enable interrupts using simple instructions.  After critical section, interrupts
*             will be enabled even if they were disabled before entering the critical section.
*             NOT IMPLEMENTED
*
* Method #2:  Disable/Enable interrupts by preserving the state of interrupts.  In other words, if
*             interrupts were disabled before entering the critical section, they will be disabled when
*             leaving the critical section.
*             NOT IMPLEMENTED
*
* Method #3:  Disable/Enable interrupts by preserving the state of interrupts.  Generally speaking you
*             would store the state of the interrupt disable flag in the local variable 'cpu_sr' and then
*             disable interrupts.  'cpu_sr' is allocated in all of uC/OS-II's functions that need to
*             disable interrupts.  You would restore the interrupt disable state by copying back 'cpu_sr'
*             into the CPU's status register.
*********************************************************************************************************
*/

#define  OS_CRITICAL_METHOD    3u


#if      OS_CRITICAL_METHOD == 3u

#if      OS_CPU_INT_DIS_MEAS_EN > 0u

#define  OS_ENTER_CRITICAL()  do { cpu_sr = CPU_SR_Save();  \
                                   OS_CPU_IntDisMeasStart();  } while (0)
#define  OS_EXIT_CRITICAL()   do { OS_CPU_IntDisMeasStop();    \
                                   CPU_SR_Restore(cpu_sr); } while (0)

#else

#define  OS_ENTER_CRITICAL()  do {cpu_sr = CPU_SR_Save();} while (0)
#define  OS_EXIT_CRITICAL()   do {CPU_SR_Restore(cpu_sr);} while (0)

#endif

#endif


/*
*********************************************************************************************************
*                                          GLOBAL VARIABLES
*********************************************************************************************************
*/

                                                                /* Variables used to measure interrupt disable time     */
#if OS_CPU_INT_DIS_MEAS_EN > 0u
OS_CPU_EXT  INT16U   OS_CPU_IntDisMeasNestingCtr;
OS_CPU_EXT  INT16U   OS_CPU_IntDisMeasCntsEnter;
OS_CPU_EXT  INT16U   OS_CPU_IntDisMeasCntsExit;
OS_CPU_EXT  INT16U   OS_CPU_IntDisMeasCntsMax;
OS_CPU_EXT  INT16U   OS_CPU_IntDisMeasCntsDelta;
OS_CPU_EXT  INT16U   OS_CPU_IntDisMeasCntsOvrhd;
#endif

OS_CPU_EXT  OS_STK   OS_CPU_ExceptStk[OS_CPU_EXCEPT_STK_SIZE];
OS_CPU_EXT  OS_STK  *OS_CPU_ExceptStkBase;
OS_CPU_EXT  OS_STK  *OS_CPU_ExceptStkPtr;

OS_CPU_EXT  INT32U   OS_CPU_ARM_DRegCnt;                        /* VFP/NEON register count                              */


/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/

#if OS_CRITICAL_METHOD == 3u                                    /* See OS_CPU_A.ASM                                     */
    OS_CPU_SR  OS_CPU_SR_Save                     (void);
    void       OS_CPU_SR_Restore                  (OS_CPU_SR cpu_sr);
#endif

    void       OS_CPU_SR_INT_Dis                  (void);
    void       OS_CPU_SR_INT_En                   (void);
    void       OS_CPU_SR_FIQ_Dis                  (void);
    void       OS_CPU_SR_FIQ_En                   (void);
    void       OS_CPU_SR_IRQ_Dis                  (void);
    void       OS_CPU_SR_IRQ_En                   (void);

    void       OSCtxSw                            (void);
    void       OSIntCtxSw                         (void);
    void       OSStartHighRdy                     (void);

    void       OS_CPU_InitExceptVect              (void);

    void       OS_CPU_ARM_ExceptUndefInstrHndlr   (void);
    void       OS_CPU_ARM_ExceptSwiHndlr          (void);
    void       OS_CPU_ARM_ExceptPrefetchAbortHndlr(void);
    void       OS_CPU_ARM_ExceptDataAbortHndlr    (void);
    void       OS_CPU_ARM_ExceptIrqHndlr          (void);
    void       OS_CPU_ARM_ExceptFiqHndlr          (void);

    void       OS_CPU_ExceptHndlr                 (INT32U  src_id);

    INT32U     OS_CPU_ExceptStkChk                (void);

#if OS_CPU_INT_DIS_MEAS_EN > 0u
    void       OS_CPU_IntDisMeasInit              (void);
    void       OS_CPU_IntDisMeasStart             (void);
    void       OS_CPU_IntDisMeasStop              (void);
    INT16U     OS_CPU_IntDisMeasTmrRd             (void);
#endif

    CPU_INT64U  OS_CPU_SPSRGet             (void);
    CPU_INT64U  OS_CPU_SIMDGet             (void);

#endif
################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/port/mibench_gsm/src/add.c \
../src/port/mibench_gsm/src/code.c \
../src/port/mibench_gsm/src/debug.c \
../src/port/mibench_gsm/src/decode.c \
../src/port/mibench_gsm/src/gsm_create.c \
../src/port/mibench_gsm/src/gsm_decode.c \
../src/port/mibench_gsm/src/gsm_destroy.c \
../src/port/mibench_gsm/src/gsm_encode.c \
../src/port/mibench_gsm/src/gsm_explode.c \
../src/port/mibench_gsm/src/gsm_implode.c \
../src/port/mibench_gsm/src/gsm_option.c \
../src/port/mibench_gsm/src/gsm_print.c \
../src/port/mibench_gsm/src/long_term.c \
../src/port/mibench_gsm/src/lpc.c \
../src/port/mibench_gsm/src/preprocess.c \
../src/port/mibench_gsm/src/rpe.c \
../src/port/mibench_gsm/src/short_term.c \
../src/port/mibench_gsm/src/table.c \
../src/port/mibench_gsm/src/toast.c \
../src/port/mibench_gsm/src/toast_alaw.c \
../src/port/mibench_gsm/src/toast_audio.c \
../src/port/mibench_gsm/src/toast_lin.c \
../src/port/mibench_gsm/src/toast_ulaw.c 

OBJS += \
./src/port/mibench_gsm/src/add.o \
./src/port/mibench_gsm/src/code.o \
./src/port/mibench_gsm/src/debug.o \
./src/port/mibench_gsm/src/decode.o \
./src/port/mibench_gsm/src/gsm_create.o \
./src/port/mibench_gsm/src/gsm_decode.o \
./src/port/mibench_gsm/src/gsm_destroy.o \
./src/port/mibench_gsm/src/gsm_encode.o \
./src/port/mibench_gsm/src/gsm_explode.o \
./src/port/mibench_gsm/src/gsm_implode.o \
./src/port/mibench_gsm/src/gsm_option.o \
./src/port/mibench_gsm/src/gsm_print.o \
./src/port/mibench_gsm/src/long_term.o \
./src/port/mibench_gsm/src/lpc.o \
./src/port/mibench_gsm/src/preprocess.o \
./src/port/mibench_gsm/src/rpe.o \
./src/port/mibench_gsm/src/short_term.o \
./src/port/mibench_gsm/src/table.o \
./src/port/mibench_gsm/src/toast.o \
./src/port/mibench_gsm/src/toast_alaw.o \
./src/port/mibench_gsm/src/toast_audio.o \
./src/port/mibench_gsm/src/toast_lin.o \
./src/port/mibench_gsm/src/toast_ulaw.o 

C_DEPS += \
./src/port/mibench_gsm/src/add.d \
./src/port/mibench_gsm/src/code.d \
./src/port/mibench_gsm/src/debug.d \
./src/port/mibench_gsm/src/decode.d \
./src/port/mibench_gsm/src/gsm_create.d \
./src/port/mibench_gsm/src/gsm_decode.d \
./src/port/mibench_gsm/src/gsm_destroy.d \
./src/port/mibench_gsm/src/gsm_encode.d \
./src/port/mibench_gsm/src/gsm_explode.d \
./src/port/mibench_gsm/src/gsm_implode.d \
./src/port/mibench_gsm/src/gsm_option.d \
./src/port/mibench_gsm/src/gsm_print.d \
./src/port/mibench_gsm/src/long_term.d \
./src/port/mibench_gsm/src/lpc.d \
./src/port/mibench_gsm/src/preprocess.d \
./src/port/mibench_gsm/src/rpe.d \
./src/port/mibench_gsm/src/short_term.d \
./src/port/mibench_gsm/src/table.d \
./src/port/mibench_gsm/src/toast.d \
./src/port/mibench_gsm/src/toast_alaw.d \
./src/port/mibench_gsm/src/toast_audio.d \
./src/port/mibench_gsm/src/toast_lin.d \
./src/port/mibench_gsm/src/toast_ulaw.d 


# Each subdirectory must supply rules for building sources it contributes
src/port/mibench_gsm/src/%.o: ../src/port/mibench_gsm/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../ucos-ii_timer_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



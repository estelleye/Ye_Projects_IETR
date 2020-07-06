################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/port/mibench_bitcount/bitarray.c \
../src/port/mibench_bitcount/bitcnt_1.c \
../src/port/mibench_bitcount/bitcnt_2.c \
../src/port/mibench_bitcount/bitcnt_3.c \
../src/port/mibench_bitcount/bitcnt_4.c \
../src/port/mibench_bitcount/bitcnts.c \
../src/port/mibench_bitcount/bitfiles.c \
../src/port/mibench_bitcount/bitstrng.c \
../src/port/mibench_bitcount/bstr_i.c 

OBJS += \
./src/port/mibench_bitcount/bitarray.o \
./src/port/mibench_bitcount/bitcnt_1.o \
./src/port/mibench_bitcount/bitcnt_2.o \
./src/port/mibench_bitcount/bitcnt_3.o \
./src/port/mibench_bitcount/bitcnt_4.o \
./src/port/mibench_bitcount/bitcnts.o \
./src/port/mibench_bitcount/bitfiles.o \
./src/port/mibench_bitcount/bitstrng.o \
./src/port/mibench_bitcount/bstr_i.o 

C_DEPS += \
./src/port/mibench_bitcount/bitarray.d \
./src/port/mibench_bitcount/bitcnt_1.d \
./src/port/mibench_bitcount/bitcnt_2.d \
./src/port/mibench_bitcount/bitcnt_3.d \
./src/port/mibench_bitcount/bitcnt_4.d \
./src/port/mibench_bitcount/bitcnts.d \
./src/port/mibench_bitcount/bitfiles.d \
./src/port/mibench_bitcount/bitstrng.d \
./src/port/mibench_bitcount/bstr_i.d 


# Each subdirectory must supply rules for building sources it contributes
src/port/mibench_bitcount/%.o: ../src/port/mibench_bitcount/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../ucos-ii_timer_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



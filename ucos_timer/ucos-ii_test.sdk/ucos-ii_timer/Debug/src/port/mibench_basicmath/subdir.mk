################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/port/mibench_basicmath/basicmath_large.c \
../src/port/mibench_basicmath/basicmath_small.c \
../src/port/mibench_basicmath/cubic.c \
../src/port/mibench_basicmath/isqrt.c \
../src/port/mibench_basicmath/rad2deg.c 

OBJS += \
./src/port/mibench_basicmath/basicmath_large.o \
./src/port/mibench_basicmath/basicmath_small.o \
./src/port/mibench_basicmath/cubic.o \
./src/port/mibench_basicmath/isqrt.o \
./src/port/mibench_basicmath/rad2deg.o 

C_DEPS += \
./src/port/mibench_basicmath/basicmath_large.d \
./src/port/mibench_basicmath/basicmath_small.d \
./src/port/mibench_basicmath/cubic.d \
./src/port/mibench_basicmath/isqrt.d \
./src/port/mibench_basicmath/rad2deg.d 


# Each subdirectory must supply rules for building sources it contributes
src/port/mibench_basicmath/%.o: ../src/port/mibench_basicmath/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../ucos-ii_timer_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



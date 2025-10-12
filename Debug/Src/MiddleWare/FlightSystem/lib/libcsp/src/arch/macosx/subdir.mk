################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_clock.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_malloc.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_queue.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_semaphore.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_system.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_thread.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_time.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/pthread_queue.c 

OBJS += \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_clock.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_malloc.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_queue.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_semaphore.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_system.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_thread.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_time.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/pthread_queue.o 

C_DEPS += \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_clock.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_malloc.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_queue.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_semaphore.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_system.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_thread.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_time.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/pthread_queue.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/%.o Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/%.su Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/%.cyclo: ../Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/%.c Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F746xx -DUSE_FULL_LL_DRIVER -DHSE_VALUE=25000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DEXTERNAL_CLOCK_VALUE=12288000 -DHSI_VALUE=16000000 -DLSI_VALUE=32000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=0 -DART_ACCELERATOR_ENABLE=0 -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/Utils" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/container" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/uart" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/STDIO" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/BSP" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os/include/wrapper" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/include/app/system" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os/include/os" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/drivers/stm32/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-FlightSystem-2f-lib-2f-libcsp-2f-src-2f-arch-2f-macosx

clean-Src-2f-MiddleWare-2f-FlightSystem-2f-lib-2f-libcsp-2f-src-2f-arch-2f-macosx:
	-$(RM) ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_clock.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_clock.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_clock.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_clock.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_malloc.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_malloc.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_malloc.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_malloc.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_queue.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_queue.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_queue.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_queue.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_semaphore.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_semaphore.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_semaphore.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_semaphore.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_system.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_system.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_system.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_system.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_thread.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_thread.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_thread.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_thread.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_time.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_time.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_time.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/csp_time.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/pthread_queue.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/pthread_queue.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/pthread_queue.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/macosx/pthread_queue.su

.PHONY: clean-Src-2f-MiddleWare-2f-FlightSystem-2f-lib-2f-libcsp-2f-src-2f-arch-2f-macosx


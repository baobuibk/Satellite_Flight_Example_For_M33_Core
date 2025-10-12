################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_malloc.c \
../Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_queue.c \
../Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_semaphore.c \
../Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_system.c \
../Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_thread.c \
../Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_time.c \
../Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/pthread_queue.c 

OBJS += \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_malloc.o \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_queue.o \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_semaphore.o \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_system.o \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_thread.o \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_time.o \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/pthread_queue.o 

C_DEPS += \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_malloc.d \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_queue.d \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_semaphore.d \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_system.d \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_thread.d \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_time.d \
./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/pthread_queue.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/%.o Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/%.su Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/%.cyclo: ../Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/%.c Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/sgp4/src/c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-src-2f-arch-2f-macosx

clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-src-2f-arch-2f-macosx:
	-$(RM) ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_malloc.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_malloc.d ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_malloc.o ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_malloc.su ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_queue.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_queue.d ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_queue.o ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_queue.su ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_semaphore.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_semaphore.d ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_semaphore.o ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_semaphore.su ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_system.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_system.d ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_system.o ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_system.su ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_thread.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_thread.d ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_thread.o ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_thread.su ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_time.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_time.d ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_time.o ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/csp_time.su ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/pthread_queue.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/pthread_queue.d ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/pthread_queue.o ./Src/MiddleWare/suchai/lib/libcsp/src/arch/macosx/pthread_queue.su

.PHONY: clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-src-2f-arch-2f-macosx


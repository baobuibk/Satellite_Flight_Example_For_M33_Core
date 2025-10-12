################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/suchai/os/linux/osDelay.c \
../Src/MiddleWare/suchai/os/linux/osQueue.c \
../Src/MiddleWare/suchai/os/linux/osScheduler.c \
../Src/MiddleWare/suchai/os/linux/osSemphr.c \
../Src/MiddleWare/suchai/os/linux/osThread.c \
../Src/MiddleWare/suchai/os/linux/pthread_queue.c 

OBJS += \
./Src/MiddleWare/suchai/os/linux/osDelay.o \
./Src/MiddleWare/suchai/os/linux/osQueue.o \
./Src/MiddleWare/suchai/os/linux/osScheduler.o \
./Src/MiddleWare/suchai/os/linux/osSemphr.o \
./Src/MiddleWare/suchai/os/linux/osThread.o \
./Src/MiddleWare/suchai/os/linux/pthread_queue.o 

C_DEPS += \
./Src/MiddleWare/suchai/os/linux/osDelay.d \
./Src/MiddleWare/suchai/os/linux/osQueue.d \
./Src/MiddleWare/suchai/os/linux/osScheduler.d \
./Src/MiddleWare/suchai/os/linux/osSemphr.d \
./Src/MiddleWare/suchai/os/linux/osThread.d \
./Src/MiddleWare/suchai/os/linux/pthread_queue.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/suchai/os/linux/%.o Src/MiddleWare/suchai/os/linux/%.su Src/MiddleWare/suchai/os/linux/%.cyclo: ../Src/MiddleWare/suchai/os/linux/%.c Src/MiddleWare/suchai/os/linux/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/sgp4/src/c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-suchai-2f-os-2f-linux

clean-Src-2f-MiddleWare-2f-suchai-2f-os-2f-linux:
	-$(RM) ./Src/MiddleWare/suchai/os/linux/osDelay.cyclo ./Src/MiddleWare/suchai/os/linux/osDelay.d ./Src/MiddleWare/suchai/os/linux/osDelay.o ./Src/MiddleWare/suchai/os/linux/osDelay.su ./Src/MiddleWare/suchai/os/linux/osQueue.cyclo ./Src/MiddleWare/suchai/os/linux/osQueue.d ./Src/MiddleWare/suchai/os/linux/osQueue.o ./Src/MiddleWare/suchai/os/linux/osQueue.su ./Src/MiddleWare/suchai/os/linux/osScheduler.cyclo ./Src/MiddleWare/suchai/os/linux/osScheduler.d ./Src/MiddleWare/suchai/os/linux/osScheduler.o ./Src/MiddleWare/suchai/os/linux/osScheduler.su ./Src/MiddleWare/suchai/os/linux/osSemphr.cyclo ./Src/MiddleWare/suchai/os/linux/osSemphr.d ./Src/MiddleWare/suchai/os/linux/osSemphr.o ./Src/MiddleWare/suchai/os/linux/osSemphr.su ./Src/MiddleWare/suchai/os/linux/osThread.cyclo ./Src/MiddleWare/suchai/os/linux/osThread.d ./Src/MiddleWare/suchai/os/linux/osThread.o ./Src/MiddleWare/suchai/os/linux/osThread.su ./Src/MiddleWare/suchai/os/linux/pthread_queue.cyclo ./Src/MiddleWare/suchai/os/linux/pthread_queue.d ./Src/MiddleWare/suchai/os/linux/pthread_queue.o ./Src/MiddleWare/suchai/os/linux/pthread_queue.su

.PHONY: clean-Src-2f-MiddleWare-2f-suchai-2f-os-2f-linux


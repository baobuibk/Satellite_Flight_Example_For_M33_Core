################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/suchai/os/sim/osDelay.c \
../Src/MiddleWare/suchai/os/sim/osQueue.c \
../Src/MiddleWare/suchai/os/sim/osScheduler.c \
../Src/MiddleWare/suchai/os/sim/osSemphr.c \
../Src/MiddleWare/suchai/os/sim/osThread.c \
../Src/MiddleWare/suchai/os/sim/pthread_queue.c 

OBJS += \
./Src/MiddleWare/suchai/os/sim/osDelay.o \
./Src/MiddleWare/suchai/os/sim/osQueue.o \
./Src/MiddleWare/suchai/os/sim/osScheduler.o \
./Src/MiddleWare/suchai/os/sim/osSemphr.o \
./Src/MiddleWare/suchai/os/sim/osThread.o \
./Src/MiddleWare/suchai/os/sim/pthread_queue.o 

C_DEPS += \
./Src/MiddleWare/suchai/os/sim/osDelay.d \
./Src/MiddleWare/suchai/os/sim/osQueue.d \
./Src/MiddleWare/suchai/os/sim/osScheduler.d \
./Src/MiddleWare/suchai/os/sim/osSemphr.d \
./Src/MiddleWare/suchai/os/sim/osThread.d \
./Src/MiddleWare/suchai/os/sim/pthread_queue.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/suchai/os/sim/%.o Src/MiddleWare/suchai/os/sim/%.su Src/MiddleWare/suchai/os/sim/%.cyclo: ../Src/MiddleWare/suchai/os/sim/%.c Src/MiddleWare/suchai/os/sim/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/sgp4/src/c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-suchai-2f-os-2f-sim

clean-Src-2f-MiddleWare-2f-suchai-2f-os-2f-sim:
	-$(RM) ./Src/MiddleWare/suchai/os/sim/osDelay.cyclo ./Src/MiddleWare/suchai/os/sim/osDelay.d ./Src/MiddleWare/suchai/os/sim/osDelay.o ./Src/MiddleWare/suchai/os/sim/osDelay.su ./Src/MiddleWare/suchai/os/sim/osQueue.cyclo ./Src/MiddleWare/suchai/os/sim/osQueue.d ./Src/MiddleWare/suchai/os/sim/osQueue.o ./Src/MiddleWare/suchai/os/sim/osQueue.su ./Src/MiddleWare/suchai/os/sim/osScheduler.cyclo ./Src/MiddleWare/suchai/os/sim/osScheduler.d ./Src/MiddleWare/suchai/os/sim/osScheduler.o ./Src/MiddleWare/suchai/os/sim/osScheduler.su ./Src/MiddleWare/suchai/os/sim/osSemphr.cyclo ./Src/MiddleWare/suchai/os/sim/osSemphr.d ./Src/MiddleWare/suchai/os/sim/osSemphr.o ./Src/MiddleWare/suchai/os/sim/osSemphr.su ./Src/MiddleWare/suchai/os/sim/osThread.cyclo ./Src/MiddleWare/suchai/os/sim/osThread.d ./Src/MiddleWare/suchai/os/sim/osThread.o ./Src/MiddleWare/suchai/os/sim/osThread.su ./Src/MiddleWare/suchai/os/sim/pthread_queue.cyclo ./Src/MiddleWare/suchai/os/sim/pthread_queue.d ./Src/MiddleWare/suchai/os/sim/pthread_queue.o ./Src/MiddleWare/suchai/os/sim/pthread_queue.su

.PHONY: clean-Src-2f-MiddleWare-2f-suchai-2f-os-2f-sim


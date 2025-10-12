################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo.c \
../Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo_windows.c \
../Src/MiddleWare/suchai/lib/libcsp/examples/kiss.c \
../Src/MiddleWare/suchai/lib/libcsp/examples/simple.c \
../Src/MiddleWare/suchai/lib/libcsp/examples/zmqproxy.c 

OBJS += \
./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo.o \
./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo_windows.o \
./Src/MiddleWare/suchai/lib/libcsp/examples/kiss.o \
./Src/MiddleWare/suchai/lib/libcsp/examples/simple.o \
./Src/MiddleWare/suchai/lib/libcsp/examples/zmqproxy.o 

C_DEPS += \
./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo.d \
./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo_windows.d \
./Src/MiddleWare/suchai/lib/libcsp/examples/kiss.d \
./Src/MiddleWare/suchai/lib/libcsp/examples/simple.d \
./Src/MiddleWare/suchai/lib/libcsp/examples/zmqproxy.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/suchai/lib/libcsp/examples/%.o Src/MiddleWare/suchai/lib/libcsp/examples/%.su Src/MiddleWare/suchai/lib/libcsp/examples/%.cyclo: ../Src/MiddleWare/suchai/lib/libcsp/examples/%.c Src/MiddleWare/suchai/lib/libcsp/examples/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/sgp4/src/c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-examples

clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-examples:
	-$(RM) ./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo.cyclo ./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo.d ./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo.o ./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo.su ./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo_windows.cyclo ./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo_windows.d ./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo_windows.o ./Src/MiddleWare/suchai/lib/libcsp/examples/csp_if_fifo_windows.su ./Src/MiddleWare/suchai/lib/libcsp/examples/kiss.cyclo ./Src/MiddleWare/suchai/lib/libcsp/examples/kiss.d ./Src/MiddleWare/suchai/lib/libcsp/examples/kiss.o ./Src/MiddleWare/suchai/lib/libcsp/examples/kiss.su ./Src/MiddleWare/suchai/lib/libcsp/examples/simple.cyclo ./Src/MiddleWare/suchai/lib/libcsp/examples/simple.d ./Src/MiddleWare/suchai/lib/libcsp/examples/simple.o ./Src/MiddleWare/suchai/lib/libcsp/examples/simple.su ./Src/MiddleWare/suchai/lib/libcsp/examples/zmqproxy.cyclo ./Src/MiddleWare/suchai/lib/libcsp/examples/zmqproxy.d ./Src/MiddleWare/suchai/lib/libcsp/examples/zmqproxy.o ./Src/MiddleWare/suchai/lib/libcsp/examples/zmqproxy.su

.PHONY: clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-examples


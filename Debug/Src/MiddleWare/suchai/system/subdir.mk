################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/suchai/system/cmdConsole.c \
../Src/MiddleWare/suchai/system/globals.c \
../Src/MiddleWare/suchai/system/mainFS.c \
../Src/MiddleWare/suchai/system/powerCommand.c \
../Src/MiddleWare/suchai/system/repoCommandStatic.c \
../Src/MiddleWare/suchai/system/repoData.c \
../Src/MiddleWare/suchai/system/repoDataSchema.c \
../Src/MiddleWare/suchai/system/taskCommunications.c \
../Src/MiddleWare/suchai/system/taskConsole.c \
../Src/MiddleWare/suchai/system/taskDispatcher.c \
../Src/MiddleWare/suchai/system/taskInit.c 

OBJS += \
./Src/MiddleWare/suchai/system/cmdConsole.o \
./Src/MiddleWare/suchai/system/globals.o \
./Src/MiddleWare/suchai/system/mainFS.o \
./Src/MiddleWare/suchai/system/powerCommand.o \
./Src/MiddleWare/suchai/system/repoCommandStatic.o \
./Src/MiddleWare/suchai/system/repoData.o \
./Src/MiddleWare/suchai/system/repoDataSchema.o \
./Src/MiddleWare/suchai/system/taskCommunications.o \
./Src/MiddleWare/suchai/system/taskConsole.o \
./Src/MiddleWare/suchai/system/taskDispatcher.o \
./Src/MiddleWare/suchai/system/taskInit.o 

C_DEPS += \
./Src/MiddleWare/suchai/system/cmdConsole.d \
./Src/MiddleWare/suchai/system/globals.d \
./Src/MiddleWare/suchai/system/mainFS.d \
./Src/MiddleWare/suchai/system/powerCommand.d \
./Src/MiddleWare/suchai/system/repoCommandStatic.d \
./Src/MiddleWare/suchai/system/repoData.d \
./Src/MiddleWare/suchai/system/repoDataSchema.d \
./Src/MiddleWare/suchai/system/taskCommunications.d \
./Src/MiddleWare/suchai/system/taskConsole.d \
./Src/MiddleWare/suchai/system/taskDispatcher.d \
./Src/MiddleWare/suchai/system/taskInit.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/suchai/system/%.o Src/MiddleWare/suchai/system/%.su Src/MiddleWare/suchai/system/%.cyclo: ../Src/MiddleWare/suchai/system/%.c Src/MiddleWare/suchai/system/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F746xx -DUSE_FULL_LL_DRIVER -DHSE_VALUE=25000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DEXTERNAL_CLOCK_VALUE=12288000 -DHSI_VALUE=16000000 -DLSI_VALUE=32000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=0 -DART_ACCELERATOR_ENABLE=0 -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/Utils" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/container" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/uart" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/STDIO" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/BSP" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include/app/system" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-suchai-2f-system

clean-Src-2f-MiddleWare-2f-suchai-2f-system:
	-$(RM) ./Src/MiddleWare/suchai/system/cmdConsole.cyclo ./Src/MiddleWare/suchai/system/cmdConsole.d ./Src/MiddleWare/suchai/system/cmdConsole.o ./Src/MiddleWare/suchai/system/cmdConsole.su ./Src/MiddleWare/suchai/system/globals.cyclo ./Src/MiddleWare/suchai/system/globals.d ./Src/MiddleWare/suchai/system/globals.o ./Src/MiddleWare/suchai/system/globals.su ./Src/MiddleWare/suchai/system/mainFS.cyclo ./Src/MiddleWare/suchai/system/mainFS.d ./Src/MiddleWare/suchai/system/mainFS.o ./Src/MiddleWare/suchai/system/mainFS.su ./Src/MiddleWare/suchai/system/powerCommand.cyclo ./Src/MiddleWare/suchai/system/powerCommand.d ./Src/MiddleWare/suchai/system/powerCommand.o ./Src/MiddleWare/suchai/system/powerCommand.su ./Src/MiddleWare/suchai/system/repoCommandStatic.cyclo ./Src/MiddleWare/suchai/system/repoCommandStatic.d ./Src/MiddleWare/suchai/system/repoCommandStatic.o ./Src/MiddleWare/suchai/system/repoCommandStatic.su ./Src/MiddleWare/suchai/system/repoData.cyclo ./Src/MiddleWare/suchai/system/repoData.d ./Src/MiddleWare/suchai/system/repoData.o ./Src/MiddleWare/suchai/system/repoData.su ./Src/MiddleWare/suchai/system/repoDataSchema.cyclo ./Src/MiddleWare/suchai/system/repoDataSchema.d ./Src/MiddleWare/suchai/system/repoDataSchema.o ./Src/MiddleWare/suchai/system/repoDataSchema.su ./Src/MiddleWare/suchai/system/taskCommunications.cyclo ./Src/MiddleWare/suchai/system/taskCommunications.d ./Src/MiddleWare/suchai/system/taskCommunications.o ./Src/MiddleWare/suchai/system/taskCommunications.su ./Src/MiddleWare/suchai/system/taskConsole.cyclo ./Src/MiddleWare/suchai/system/taskConsole.d ./Src/MiddleWare/suchai/system/taskConsole.o ./Src/MiddleWare/suchai/system/taskConsole.su ./Src/MiddleWare/suchai/system/taskDispatcher.cyclo ./Src/MiddleWare/suchai/system/taskDispatcher.d ./Src/MiddleWare/suchai/system/taskDispatcher.o ./Src/MiddleWare/suchai/system/taskDispatcher.su ./Src/MiddleWare/suchai/system/taskInit.cyclo ./Src/MiddleWare/suchai/system/taskInit.d ./Src/MiddleWare/suchai/system/taskInit.o ./Src/MiddleWare/suchai/system/taskInit.su

.PHONY: clean-Src-2f-MiddleWare-2f-suchai-2f-system


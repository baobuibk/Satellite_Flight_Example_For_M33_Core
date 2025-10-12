################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_hmac.c \
../Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_sha1.c \
../Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_xtea.c 

OBJS += \
./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_hmac.o \
./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_sha1.o \
./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_xtea.o 

C_DEPS += \
./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_hmac.d \
./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_sha1.d \
./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_xtea.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/suchai/lib/libcsp/src/crypto/%.o Src/MiddleWare/suchai/lib/libcsp/src/crypto/%.su Src/MiddleWare/suchai/lib/libcsp/src/crypto/%.cyclo: ../Src/MiddleWare/suchai/lib/libcsp/src/crypto/%.c Src/MiddleWare/suchai/lib/libcsp/src/crypto/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F746xx -DUSE_FULL_LL_DRIVER -DHSE_VALUE=25000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DEXTERNAL_CLOCK_VALUE=12288000 -DHSI_VALUE=16000000 -DLSI_VALUE=32000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=0 -DART_ACCELERATOR_ENABLE=0 -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/Utils" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/container" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/uart" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/STDIO" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/BSP" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include/app/system" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-src-2f-crypto

clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-src-2f-crypto:
	-$(RM) ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_hmac.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_hmac.d ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_hmac.o ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_hmac.su ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_sha1.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_sha1.d ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_sha1.o ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_sha1.su ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_xtea.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_xtea.d ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_xtea.o ./Src/MiddleWare/suchai/lib/libcsp/src/crypto/csp_xtea.su

.PHONY: clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-src-2f-crypto


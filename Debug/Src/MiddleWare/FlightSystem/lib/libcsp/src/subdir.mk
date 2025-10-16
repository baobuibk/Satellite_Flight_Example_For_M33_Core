################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_bridge.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_buffer.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_conn.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_crc32.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_debug.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_dedup.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_endian.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_hex_dump.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_iflist.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_init.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_io.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_port.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_promisc.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_qfifo.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_route.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_service_handler.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_services.c \
../Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_sfp.c 

OBJS += \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_bridge.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_buffer.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_conn.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_crc32.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_debug.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_dedup.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_endian.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_hex_dump.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_iflist.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_init.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_io.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_port.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_promisc.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_qfifo.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_route.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_service_handler.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_services.o \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_sfp.o 

C_DEPS += \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_bridge.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_buffer.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_conn.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_crc32.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_debug.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_dedup.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_endian.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_hex_dump.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_iflist.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_init.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_io.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_port.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_promisc.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_qfifo.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_route.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_service_handler.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_services.d \
./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_sfp.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/FlightSystem/lib/libcsp/src/%.o Src/MiddleWare/FlightSystem/lib/libcsp/src/%.su Src/MiddleWare/FlightSystem/lib/libcsp/src/%.cyclo: ../Src/MiddleWare/FlightSystem/lib/libcsp/src/%.c Src/MiddleWare/FlightSystem/lib/libcsp/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F746xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/Utils" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/container" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/STDIO" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/BSP" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os/include/wrapper" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/include/app/system" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os/include/os" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/flight" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/uart" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/dio/stm32" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/dio" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/spi" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/i2c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/libcsp/src" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Devices/tca6416" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Devices/pca9685" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Devices/AD4114" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/ntc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-FlightSystem-2f-lib-2f-libcsp-2f-src

clean-Src-2f-MiddleWare-2f-FlightSystem-2f-lib-2f-libcsp-2f-src:
	-$(RM) ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_bridge.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_bridge.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_bridge.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_bridge.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_buffer.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_buffer.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_buffer.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_buffer.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_conn.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_conn.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_conn.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_conn.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_crc32.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_crc32.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_crc32.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_crc32.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_debug.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_debug.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_debug.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_debug.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_dedup.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_dedup.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_dedup.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_dedup.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_endian.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_endian.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_endian.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_endian.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_hex_dump.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_hex_dump.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_hex_dump.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_hex_dump.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_iflist.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_iflist.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_iflist.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_iflist.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_init.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_init.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_init.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_init.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_io.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_io.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_io.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_io.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_port.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_port.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_port.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_port.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_promisc.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_promisc.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_promisc.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_promisc.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_qfifo.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_qfifo.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_qfifo.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_qfifo.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_route.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_route.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_route.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_route.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_service_handler.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_service_handler.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_service_handler.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_service_handler.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_services.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_services.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_services.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_services.su ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_sfp.cyclo ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_sfp.d ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_sfp.o ./Src/MiddleWare/FlightSystem/lib/libcsp/src/csp_sfp.su

.PHONY: clean-Src-2f-MiddleWare-2f-FlightSystem-2f-lib-2f-libcsp-2f-src


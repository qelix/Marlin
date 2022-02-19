#!/bin/sh
scp .pio/build/STM32F103RC_btt_USB/firmware.bin pi@192.168.0.66:/home/pi/ 
ssh pi@192.168.0.66 'sudo mount /dev/sda1 /home/pi/mountpoint && \
                     sudo mv /home/pi/firmware.bin /home/pi/mountpoint && \
                     sudo umount /home/pi/mountpoint && \
                     echo "Everything should have worked. The ownership preservation message can be ignored."'
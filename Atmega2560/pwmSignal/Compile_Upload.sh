arduino-cli compile --fqbn arduino:avr:mega pwmSignal

arduino-cli upload -p /dev/cu.usbmodem1442301 --fqbn arduino:avr:mega pwmSignal

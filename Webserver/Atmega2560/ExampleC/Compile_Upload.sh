arduino-cli compile --fqbn arduino:avr:mega {$pwd}

arduino-cli upload -p /dev/cu.usbmodem1442401 --fqbn arduino:avr:mega {$pwd}

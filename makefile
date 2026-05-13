all: build upload

build:
	avra program.asm

upload:
	avrdude -c avr109 -p atmega32u4 -P /dev/ttyACM0 -b 57600 -D -U flash:w:program.hex:i

clean:
	rm -f *.obj *.elf *.hex

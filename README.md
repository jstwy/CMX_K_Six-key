# CMX K Six-key
**Repository Organization**  
[`CMX_K_Six-Key.PCBDesignFiles`](https://github.com/jstwy/CMX_K_Six-key/tree/master/CMX_K_Six-Key.PCBDesignFiles) contains KiCAD files (schematic, PCB, and Gerber files)  
[`CMX_K_Six-Key.Firmware`](https://github.com/jstwy/CMX_K_Six-key/tree/master/CMX_K_Six-key.Firmware) contains firmware files (tmk_core submodule, configuration files, and compiled hex file)  
`CMX_K_Six-Key.Enclosure` contains enclosure design files (to be created...)

## PCB  
The design was done using KiCAD, following [ruiqimao's Keyboard PCB Guide](https://github.com/ruiqimao/keyboard-pcb-guide). The PCB was manufactured by [Oshpark](https://oshpark.com/) and hand-populated with components purchased from [Digi-Key Electronics](https://www.digikey.ca/), as listed in the [BOM](../master/CMX_K_Six-Key.BOM.csv).

## Firmware  
The keypad firmware was built using [tmk's TMK Keyboard Firmware Core Library](https://github.com/tmk/tmk_core), following [matt3o's keyboard firmware guide](https://deskthority.net/viewtopic.php?f=7&t=7177&start=). A virtual Linux Ubuntu machine was used to compile and flash the code.

Although the datasheet for the microcontroller indicates that the part used in this project, the ATMEGA32U4RC-AU, comes with a USB bootloader pre-programmed (see page 422 of the [datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf)), my microcontroller did not come with one. For that reason, I had to solder wires onto the SPI signal pins and the reset pin in order to program the microcontroller with an Arduino UNO [set up as an in-system programmer](https://www.arduino.cc/en/tutorial/arduinoISP).

The AVRDUDE command to program the fuses is:  
`avrdude -p m32u4 -P COM8 -c avrisp -b 19200 -U lfuse:w:0xff:m -U hfuse:w:0x98:m -U efuse:w:0xf7:m`  
where `COM8` is the COM port that my Arduino UNO was connected to.

The AVRDUDE command to flash the firmware is:  
`avrdude -p m32u4 -P COM8 -c avrisp -b 19200 -U flash:w:ATMega32U4-usbdevice_dfu-1_0_0.hex`  
where `ATMega32U4-usbdevice_dfu-1_0_0.hex` is the name of my hex file.

## Enclosure  
This part of the project has not been completed yet.

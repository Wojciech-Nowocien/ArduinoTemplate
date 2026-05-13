# Arduino Template

Simple template for Arduino Leonardo projects. If you want to use other board replace [m32U4def.inc](m32U4def.inc) (which 
I edited a little bit, probably commented just one line) with the appropriate file for your device. Make sure you have installed `avra`, `avrdude`, `make` (on Windows install it on the [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)).

## How to use it?

### Windows

Write your code in [program.asm](program.asm), then, in WSL invoke:

```shell
make build
```

Remember to use the command in the right path!

Next, click reset button on the board and run [upload.bat](upload.bat) in `CMD` or by double click. If it doesn't work replace `COM7` with other port. Use
`Device Manager` to check which correctly. Good luck!

### Linux

Write your code in [program.asm](program.asm), then, click reset button on the board and run:

```shell
make
```

Remember to use the command in the right path!

If it doesn't work replace `/dev/ttyACM0` with another directory in [makefile](makefile). To check which correctly use:

```shell
ls /dev/ttyACM* /dev/ttyUSB*
```

Good luck!

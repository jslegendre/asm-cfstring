all: output clean

output: 
	@as asm-cfstring.s -o asm-cfstring.o
	@ld asm-cfstring.o -macosx_version_min 10.12 -framework Foundation -e _start -o asm-cfstring

clean:
	@rm asm-cfstring.o

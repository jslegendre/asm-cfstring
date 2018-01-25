# asm-cfstring
How to use a CF(CFSTR/Core Foundation) string in assembly.

If you are (or plan to) interact with macOS through assembly, you will be required to use a CFString at some point. 

The executable this creates does not really *do* anything except load a CFString into a register (rsi in this case) and exit.  This is meant to be used as a reference/demonstration of how the mach-o stubs work.  Just hope this helps someone out there because I could not find any documenation/tutorials on this.




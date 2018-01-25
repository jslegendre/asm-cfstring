.section __DATA, __const
.section __TEXT, __text
.globl _start
_start:
lea CString_cfstring(%rip), %rsi
xor %rdi, %rdi
mov $0x2000001, %rax
syscall # exit(0)

.section __TEXT,__cstring
CString: .asciz	 "what am i doing with my life plz help me"		#More info on '.asciz' for those who want it: docs.huihoo.com/redhat//rhel-4-docs/rhel-as-en-4/asciz.html

.section __DATA,__cfstring
CString_cfstring:
	.quad	___CFConstantStringClassReference
	.long	1992                    
	.space	4
	.quad	CString 	# Name of cstring variable from section above								
	.quad	41 			# Basically strlen(CString)
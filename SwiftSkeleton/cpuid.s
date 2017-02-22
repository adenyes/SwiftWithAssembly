//
//  cpuid.s
//  SwiftSkeleton
//
//  Created by Andrew Denyes on 2/20/17.
//  Copyright © 2017 Diatomic Software LLC. All rights reserved.
//

.data
desc:
.ascii "CPUID Vendor: 123456789ABC\n"
desc_len = . - desc


.text
.globl _printCPUID

_printCPUID:
push %rbp
movq %rsp, %rbp
push %rbx

sub %eax, %eax
cpuid
movq desc@GOTPCREL(%rip), %rdi
movl %ebx, 14(%rdi)
movl %edx, 18(%rdi)
movl %ecx, 22(%rdi)

movl $0x2000004, %eax
movl $1, %edi
movq desc@GOTPCREL(%rip), %rsi
movl $desc_len, %edx

syscall

pop %rbx
movq %rbp, %rsp
pop %rbp
ret

.data
x: .quad 20, -70, -95, -79, -90, 72, -63, -11, 59, 71, -18, 0
y: .quad 73, -88, 99, -16, 73, 4, -26, -62, 35, -94, 76, 64, 0
.text
.global main
main:
      mov $x, %rcx
      mov (%rcx), %rax
      mov $y, %rdx
      mov (%rdx), %rbx
Loop1: 
       add $8, %rcx
       cmp $0, (%rcx)
       je .L0
       cmp (%rcx), %rax
       jl .L1
       jmp Loop1 
.L0:
     jmp Loop2
.L1:
     mov (%rcx), %rax
     jmp Loop1;


Loop2: 
       add $8, %rdx
       cmp $0, (%rdx)
       je .L3
       cmp (%rdx), %rbx
       jg .L2
       jmp Loop2
.L2:
     mov (%rdx), %rbx
     jmp Loop2
.L3: 
     call finish

       

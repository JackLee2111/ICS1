.text

.global get_min
.global start_loop
.global loop_exit

get_min:
pushq %r8 //存放最小值
pushq %r9 //存放中间变量tem
pushq %r10 //i
movq $0, %r10
movl (%rdi,%r10,4), %r8d
movl %r8d, %r9d
jmp start_loop
movl $0, %eax

start_loop:
cmpq $9, %r10
jge loop_exit
incq %r10
movl (%rdi,%r10,4), %r9d
cmpl %r9d, %r8d
jle start_loop
movl %r9d, %r8d
jmp start_loop

loop_exit:
movl %r8d, %eax
2 / 4
popq %r10
popq %r9
popq %r8
ret
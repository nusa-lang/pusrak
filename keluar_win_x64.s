.global keluar

.extern ExitProcess

keluar:
    movq %rdi, %rcx
    call ExitProcess
    retq

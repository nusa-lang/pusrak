.global keluar

.extern ExitProcess

keluar:
    movq $0, %rcx
    call ExitProcess

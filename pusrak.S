.global keluar

#if defined _WIN32 || defined _WIN64
.extern ExitProcess
#else
    #error "Kode untuk sistem operasi kamu belom ada."
#endif

keluar:
#ifdef _WIN64
    movq %rdi, %rcx
#else
    #error "Kode untuk sistem operasi kamu belom ada."
#endif

#if defined _WIN32 || defined _WIN64
    call ExitProcess
#else
    #error "Kode untuk sistem operasi kamu belom ada."
#endif

#ifdef _WIN64
    retq
#else
    #error "Kode untuk sistem operasi kamu belom ada."
#endif

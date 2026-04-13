.global keluar

#if defined _WIN32 || defined _WIN64
.extern ExitProcess
#else
    #error "Kode untuk sistem operasi kamu belom ada."
#endif

keluar:
#ifdef _WIN64
    movq $0, %rcx
#else
    #error "Kode untuk sistem operasi kamu belom ada."
#endif

#ifdef _WIN32 | _WIN64
    call ExitProcess
#else
    #error "Kode untuk sistem operasi kamu belom ada."
#endif


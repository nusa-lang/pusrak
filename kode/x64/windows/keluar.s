.global keluar

# ExitProcess(uExitCode ecx)
.extern ExitProcess

# keluar(kode_keluar ecx)
keluar:
    call ExitProcess
    ret

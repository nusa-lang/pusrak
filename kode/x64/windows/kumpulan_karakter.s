.section .text

.global jumlah_karakter

# jumlah_karakter(rcx *) rax:
jumlah_karakter:
    movq $0, %rax       # rax = 0
    ulang:
        cmpq $0, (%rcx) # jika '\0' == *rcx:
            je selesai  #   loncat ke label selesai
        addq $1, %rax   # rax += 1
        addq $1, %rcx   # rcx += 1
        jmp ulang      # loncal ke ulang
    selesai:
    ret                 # kembalikan rax

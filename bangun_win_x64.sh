clang -c keluar_win_x64.s -o keluar_win_x64.o

ar rcs pusrak_win_x64.a \
        keluar_win_x64.o

rm keluar_win_x64.o

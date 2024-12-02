#!/bin/bash

clear

echo -e "\033[32mPilih opsi konversi:\033[0m"
echo -e "\033[32m1. Desimal ke Biner\033[0m"
echo -e "\033[32m2. Biner ke Desimal\033[0m"
echo -n "Masukkan pilihan (1 atau 2): "
read pilihan

clear

if [ "$pilihan" -eq 1 ]; then
    echo "Masukkan angka desimal:"
    read desimal
    biner=$(echo "obase=2; $desimal" | bc)
    echo "Angka desimal $desimal dalam biner adalah: $biner"
elif [ "$pilihan" -eq 2 ]; then
    echo "Masukkan angka biner (misalnya: 10101):"
    read biner
    desimal=$(echo "ibase=2; $biner" | bc)
    echo "Angka biner $biner dalam desimal adalah: $desimal"
else
    echo "Pilihan tidak valid. Silakan pilih 1 atau 2."
fi

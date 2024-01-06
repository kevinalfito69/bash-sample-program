#!/bin/bash


# Fungsi untuk mencetak teks dengan warna
print_color_text() {
    local color=$1
    local text=$2
    echo -e "\e[${color}m${text}\e[0m"
}

# Menampilkan opsi dengan warna yang berbeda
echo "$(print_color_text '1;33' 'Pilih operasi yang ingin dijalankan:')"
echo "$(print_color_text '1;36' '1. npm run tailwind')"
echo "$(print_color_text '1;35' '2. python manage.py runserver')"
echo "$(print_color_text '1;34' '3. python manage.py makemigrations')"
echo "$(print_color_text '1;32' '4. python manage.py migrate')"

read -p "Masukkan nomor operasi: " choice

case $choice in
    1)
        gnome-terminal --tab --title="tailwind CSS" -- bash -c "npm run tailwind"
        ;;
    2)
        gnome-terminal --tab --title="Django Server Running" -- bash -c "python manage.py runserver"
        ;;
    3)
        gnome-terminal --tab --title="Django Server Running" -- bash -c "python manage.py makemigrations"
        ;;
    4)
        gnome-terminal --tab --title="Django Server Running" -- bash -c "python manage.py migrate"
        ;;
    *)
        echo "Pilihan tidak valid."
        ;;
esac

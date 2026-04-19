#!/bin/bash


echo "[*] Açılıyor: $FILE"

# Termux (Android)
if command -v termux-open > /dev/null 2>&1; then
    termux-open "termux-toolbox.html"

# Linux
elif command -v xdg-open > /dev/null 2>&1; then
    xdg-open "fedora-toolbox.html" >/dev/null 2>&1 &

# Windows (Git Bash / WSL fallback)
elif command -v start > /dev/null 2>&1; then
    start "win-toolbox.html"

else
    echo "[!] Tarayıcı açılamadı."
    echo "[!] Dosyayı manuel aç"
    exit 1
fi

echo "[+] Tarayıcı açıldı."

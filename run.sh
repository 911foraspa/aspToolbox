#!/bin/bash

FILE="fedora-toolbox.html"

echo "[*] Açılıyor: $FILE"

# Termux (Android)
if command -v termux-open > /dev/null 2>&1; then
    termux-open "$FILE"

# Linux
elif command -v xdg-open > /dev/null 2>&1; then
    xdg-open "$FILE" >/dev/null 2>&1 &

# macOS
elif command -v open > /dev/null 2>&1; then
    open "$FILE"

# Windows (Git Bash / WSL fallback)
elif command -v start > /dev/null 2>&1; then
    start "$FILE"

else
    echo "[!] Tarayıcı açılamadı."
    echo "[!] Dosyayı manuel aç: $FILE"
    exit 1
fi

echo "[+] Tarayıcı açıldı."

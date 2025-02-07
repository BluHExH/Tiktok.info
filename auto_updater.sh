#!/bin/bash

clear
echo "[+] Auto Updater Running..."

# আপডেট JSON ফাইল রাখার লোকেশন
json_file="$HOME/Download/tiktok_data.json"
url="https://api.example.com/tiktok_updates"

while true; do
    response=$(curl -s "$url")
    if [[ -n "$response" ]]; then
        echo "$response" | jq > "$json_file"
        echo "[✔] Updated: $(date)"
    else
        echo "[-] Update Failed!"
    fi
    sleep 300  # ৫ মিনিট (300 সেকেন্ড)
done

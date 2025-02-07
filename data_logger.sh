#!/bin/bash

clear
echo "[+] Fetching TikTok User Info..."
read -p "Enter TikTok Username: " username

url="https://api.example.com/tiktok?user=$username"
response=$(curl -s "$url")

if [[ -n "$response" ]]; then
    echo "$response" | jq > "$HOME/Download/$username.txt"
    echo "[✔] Data saved in ~/Download/$username.txt"
else
    echo "[-] Failed to fetch data!"
fi

#!/bin/bash

clear
echo "[+] Sending Data to Telegram..."
read -p "Enter TikTok Username: " username

url="https://api.example.com/tiktok?user=$username"
response=$(curl -s "$url")

if [[ -n "$response" ]]; then
    bot_token="YOUR_BOT_TOKEN"
    chat_id="YOUR_CHAT_ID"
    message="TikTok User Info: $response"

    curl -s -X POST "https://api.telegram.org/bot$bot_token/sendMessage" \
        -d "chat_id=$chat_id" \
        -d "text=$message"

    echo "[✔] Data Sent to Telegram!"
else
    echo "[-] Failed to fetch data!"
fi

#!/bin/bash

clear
echo "[+] Fetching TikTok User Info..."
read -p "Enter TikTok Username: " username

# TikTok API থেকে ডাটা ফেচ করা (উদাহরণ API)
url="https://api.example.com/tiktok?user=$username"
response=$(curl -s "$url")

# JSON ফরম্যাটে সুন্দরভাবে দেখানোর জন্য jq ইউজ করা
if [[ -n "$response" ]]; then
    echo "$response" | jq
else
    echo "[-] Failed to fetch data!"
fi

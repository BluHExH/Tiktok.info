#!/bin/bash

# Termux Clear + Logo
clear
echo -e "\e[1;34m"
echo "███████╗███████╗██╗  ██╗"
echo "██╔════╝██╔════╝██║  ██║"
echo "███████╗█████╗  ███████║"
echo "╚════██║██╔══╝  ██╔══██║"
echo "███████║███████╗██║  ██║"
echo "╚══════╝╚══════╝╚═╝  ╚═╝"
echo -e "\e[0m"
echo ""
echo " [1] Simple Info Fetcher"
echo " [2] TikTok Data Logger"
echo " [3] API Auto Updater"
echo " [4] Telegram Bot"
echo " [5] Exit"
echo ""
read -p "Enter Your Choice: " choice

case $choice in
  1) bash info_fetcher.sh ;;
  2) bash data_logger.sh ;;
  3) bash auto_updater.sh ;;
  4) bash telegram_bot.sh ;;
  5) exit ;;
  *) echo "Invalid Choice!" ;;
esac

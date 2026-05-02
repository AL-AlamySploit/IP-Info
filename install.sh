#!/bin/bash
r='\e[99;31m' # Red
g='\e[99;32m' # Green
y='\e[99;33m' # Yellow
b='\e[99;34m' # Blue
c='\e[36m' #Cyan
rs='\e[0m' #reset

printf """
\e[36m
██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗
██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝
██║   ██║██║  ██║██████╔╝███████║   ██║   █████╗
██║   ██║██║  ██║██╔═══╝ ██╔══██║   ██║   ██╔══╝
╚██████╔╝██████╔╝██║     ██║  ██║   ██║   ███████╗
 ╚═════╝ ╚═════╝ ╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚══════╝
\e[33m        SYSTEM UPDATE TOOL
\e[0m
\n""""
"
echo  -e $g"[1] Termux"
echo  -e $g"[2] Linux"
echo ''
read -p "Choose system: " sys

if [ "$sys" = "1" ]; then
    echo ""
    echo  $g"[+] Updating Termux..."
    printf "Updating and Upgrading First..!\n"
    pkg update --fix-missing
    pkg upgrade
    pkg clean
    apt autoremove -y
    pkg update -y && pkg upgrade -y
    pkg install curl wget git dnsutils net-tools iproute2 python -y

    echo $g"[+] Termux updated successfully ✔"
    sleep 1
    bash IP.sh

elif [ "$sys" = "2" ]; then
    echo ""
    echo $g"[+] Updating Linux..."
    printf "Updating and Upgrading First..!\n"
    sudo apt update -y && sudo apt upgrade -y
    sudo apt install curl wget git dnsutils net-tools python3 -y
    echo $g"[+] Linux updated successfully ✔"
    sleep 1
    bash IP.sh

else
    echo "Invalid choice ❌"
    sleep 1
fi
sleep 6
clear
\e[0m
login
}
login
bash IP.sh

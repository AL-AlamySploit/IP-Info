#!/bin/bash
#IP-Info v3.0
#By: Ahmed Mohamed (A 𝕝 - A 𝕝 𝕒 𝕞 𝕪)
#YouTube Channel: https://www.youtube.com/channel/UCQuGjfmo04jDd6zlBscslGQ
#YouTube Channel: https://www.youtube.com/channel/UCm-UlQ6ygk4jkNfgFzlc2LA
# A7Y Team

r='\e[99;31m' # Red
g='\e[99;32m' # Green
y='\e[99;33m' # Yellow
b='\e[99;34m' # Blue
c='\e[36m' #Cyan
rs='\e[0m' #reset
clear
login () {
printf """
$c
██╗██████╗      ██╗███╗   ██╗███████╗ ██████╗
██║██╔══██╗     ██║████╗  ██║██╔════╝██╔═══██╗
██║██████╔╝     ██║██╔██╗ ██║█████╗  ██║   ██║
██║██╔═══╝      ██║██║╚██╗██║██╔══╝  ██║   ██║
██║██║          ██║██║ ╚████║██║     ╚██████╔╝
╚═╝╚═╝          ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝

$y              IP-INFO TOOL v3.0
$rs\n"""
echo ""
echo -e $g" [1] Web site      [2] IP Info"
echo ''
echo -e $g" [3] Update Tool    [4] External IP"
echo ''
echo -e $g" [5] Internal IP     [0] Exit"
echo ''
echo -e -n $g" info > "$y;read a
echo ''
if [ $a == 1 ]; then
read -p " Link > " A
printf "\n IP Site :$A"
host $A | grep "has address " | cut -d " " -f 4 > ipsite-$A.txt
echo ''
echo '[+] file was saved '
fi
if [ $a == 2 ];
then
read -p " ip > " B
curl https://ipinfo.io/$B -L > ipinfo-$B.txt
echo '[+] file was saved '
fi
if [ $a == 3 ];
then
cd
rm -rf IP-Info
git clone https://github.com/AL-AlamySploit/IP-Info
echo ''
echo 'Do you want to run an "IP-Info" tool? [Y/n]'
read tool
case $tool in
y)
    echo "Type: cd;cd IP-Info;bash IP.sh "
    echo "[+] Done..!"
    ;;
n)
    clear
    echo "[+] Done..!"
    ;;
*)
    echo "unknown"
    ;;
esac
exit
fi
if [ $a == 4 ];
then
#echo ''
#echo "External IP: " $(curl -s api.ipify.org)
ip=$(curl -s api.ipify.org)
echo "External IP: $ip"
echo "$ip" >> external-ip.txt
echo '[+] file was saved '
fi
if [ "$a" = 5 ]; then
    echo ''
    echo "Are you using:"
    echo "[1] Termux"
    echo "[2] Linux"
    read -p "Choose: " sys

    if [ "$sys" = "1" ]; then
        echo ''
        echo "Internal IP (Termux):"
        ipp=$(ifconfig  | grep "inet ")
        echo "$ipp" >> internal-ip.txt
        echo '[+] file was saved '
    elif [ "$sys" = "2" ]; then
        echo ''
        echo "Internal IP (Linux):"
        ip route get 1.1.1.1 | awk '{print $7; exit}' >> internal-ip.txt
        echo ''
        echo '[+] file was saved '
    else
        echo "Invalid choice"
    fi
fi
if [ $a == 0 ];
then
xdg-open https://www.youtube.com/channel/UCQuGjfmo04jDd6zlBscslGQ
read -p "what is Your Name..? " name
echo "thank you " $name
sleep 1
exit
fi
sleep 6
clear
login
}
login

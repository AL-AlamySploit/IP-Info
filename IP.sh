#!/bin/bash
#IP-Info v2.0
#By: Ahmed Mohamed (A 𝕝 - A 𝕝 𝕒 𝕞 𝕪)
#YouTube Channel: https://www.youtube.com/channel/UCQuGjfmo04jDd6zlBscslGQ
#YouTube Channel: https://www.youtube.com/channel/UCm-UlQ6ygk4jkNfgFzlc2LA
# A7Y Team

r='\e[99;31m' # Red
g='\e[99;32m' # Green
y='\e[99;33m' # Yellow
b='\e[99;34m' # Blue

clear
login () {
printf """

    $b╦╔═╗   ╦┌┐┌┌─┐┌─┐
    $b║╠═╝───║│││├┤ │ │
    $b╩╩     ╩┘└┘└  └─┘ 
           $y v2.0\n""" 
echo ""
echo -e $g"[1] Web site"
echo ''
echo -e $g"[2] IP Info"
echo ''
echo -e $g"[3] Update Tool"
echo ''
echo -e $g"[0] Exit"
echo ''
echo -e -n $g"info > "$y;read a
echo ''
if [ $a == 1 ];
then
read -p " Link > " A
printf "\n IP Site :" $A
host $A | grep "has address " | cut -d " " -f 4 >> ipsite.txt
fi
if [ $a == 2 ];
then
read -p " ip > " B
curl https://ipinfo.io/$B -L >> ipinfo.txt
fi
if [ $a == 3 ];
then
cd
rm -rf IP-Info
git clone https://github.com/AL-AlamySploit/IP-Info
clear
echo 'Do you want to run an "IP-Info" tool? [Y/n]'
read tool
case $tool in
y)
    echo "Type: cd;cd IP-Info;bash IP.sh "
    echo "[+] Done..!"
    ;;
n)
    echo "[+] Done..!"
    ;;
*)
    echo "unknown"
    ;;
esac
exit
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

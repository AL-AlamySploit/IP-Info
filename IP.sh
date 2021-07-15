#/bin/bash
#Channel: https://www.youtube.com/channel/UCQuGjfmo04jDd6zlBscslGQ
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
    $b╩╩     ╩┘└┘└  └─┘ \n""" 
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
host $A | grep "has address " | cut -d " " -f 4
fi
if [ $a == 2 ];
then
read -p " ip > " B
curl https://ipinfo.io/$B -L
fi
if [ $a == 3 ];
then
pkg update -y & pkg upgrade -y
pkg install dnsutils
fi
if [ $a == 0 ];
then
read -p "what 's Your Name..? " name
termux-open-url https://www.youtube.com/channel/UCQuGjfmo04jDd6zlBscslGQ
echo "thank you " $name
sleep 1
exit
fi
}
login

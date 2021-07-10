#/bin/bash
#Channel: https://www.youtube.com/channel/UCQuGjfmo04jDd6zlBscslGQ
# A7Y Team

r='\e[99;31m' # Red

g='\e[99;32m' # Green

y='\e[99;33m' # Yellow

b='\e[99;34m' # Blue

clear
printf """

   $b╦┌┐┌┌─┐┌─┐   ╦╔═╗
   $b║│││├┤ │ │───║╠═╝
   $b╩┘└┘└  └─┘   ╩╩ """ 
echo ""
echo -e $g"[1] IP site"
echo ''
echo -e $g"[2] info ip"
echo ''
echo -e $g"[0] Exit"
echo ''
echo -e -n $green"info > "$y;read a
echo ''
if [ $a == 1 ];then
read -p "Link > " A
ping $A
fi
if [ $a == 2 ];then
read -p "ip > " B
curl https://ipinfo.io/$B
fi
if [ $a == 0 ];then
termux-open-url https://www.youtube.com/channel/UCQuGjfmo04jDd6zlBscslGQ
echo -e $g "thank you..!"
echo -p $g "what 's Your Name..? "Ab
echo -e $g "thank you $Ab"
sleep 0.5
echo ''
fi

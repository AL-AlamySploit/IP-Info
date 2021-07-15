#!/bin/bash
g='\e[99;32m' # Green


echo $g"Updating and Upgrading First..!"
pkg update -y;pkg upgrade -y
pkg install  git -y
pkg install curl
pkg install dnsutils
clear
bash IP.sh

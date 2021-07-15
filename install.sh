#!/bin/bash
g='\033[1;32m' # Green


printf $g"Updating and Upgrading First..!"$g
pkg update -y;pkg upgrade -y
pkg install  git -y
pkg install curl
pkg install dnsutils
clear
bash IP.sh

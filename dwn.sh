#!/bin/bash
#########################
# Config TXT Downloader #
#     Author:BedzNS     #
#   Thanks To: HasANAL  #
#########################
RD="\e[91m"
GR="\e[92m"
YL="\e[93m"
WH="\e[97m"
BL="\e[94m"
CY="\e[96m"
B="\e[1m"
NC="\e[0m"

printf "${RD}
▀█████████▄     ▄████████ ████████▄   ▄███████▄  ███▄▄▄▄      ▄████████ 
  ███    ███   ███    ███ ███   ▀███ ██▀     ▄██ ███▀▀▀██▄   ███    ███ 
  ███    ███   ███    █▀  ███    ███       ▄███▀ ███   ███   ███    █▀  
 ▄███▄▄▄██▀   ▄███▄▄▄     ███    ███  ▀█▀▄███▀▄▄ ███   ███   ███        
▀▀███▀▀▀██▄  ▀▀███▀▀▀     ███    ███   ▄███▀   ▀ ███   ███ ▀███████████ 
  ███    ██▄   ███    █▄  ███    ███ ▄███▀       ███   ███          ███ 
  ███    ███   ███    ███ ███   ▄███ ███▄     ▄█ ███   ███    ▄█    ███ 
▄█████████▀    ██████████ ████████▀   ▀████████▀  ▀█   █▀   ▄████████▀  
                                            "
                                            printf "${CY} [BOT] Config TXT Downloader\n"

echo -ne "${WH} Link :"; read link;
printf "${WH} Dir  :"; read ResDir;
if [[ ! -d $ResDir ]]; then
	mkdir $ResDir
	mkdir $ResDir/tmp
fi
cd $ResDir
for name in $(curl -s $link | grep -Po '(?<=href=")(.*?).txt[^"]*'); 
do printf "${YL} Mendownload File $name... \n";
wget -q --no-check-certificate $link/$name;
sleep 2;
done

#!/usr/bin/bash

ifconfig |grep "broadcast" | cut -d " " -f 10 | cut -d "." -f 1,2,3 | uniq > 3octet.txt
IP=$(cat 3octet.txt)

echo "" > $IP.txt

for foctet in {1..254}

do 
ping -c 1 $IP.$foctet | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> $IP.txt &
done

cat $IP.txt 

nmap -sS -iL $IP.txt 

exit

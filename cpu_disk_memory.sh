#!/usr/bin/bash

function memory(){
echo ""
echo "Memory Usage:"
free -h
echo ""
}

function cpu (){
echo ""
echo "CPU Load:"
mpstat -P ALL
echo ""
}

function disk (){
echo ""
echo "Disk Usage:"
df -hT -x tmpfs
}
cpu
disk
memory

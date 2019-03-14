#!/bin/bash 
timestamp=$(date +%F-%R) 
awk -F':' '{ print $1}' /etc/passwd > lab1zad1-$timestamp.txt 
cut -d: -f1 /etc/group | sort > lab1zad2-$timestamp.txt 
iptables -v -L -t mangle > lab1zad3-$timestamp.txt 
netstat -nlpt --numeric-port > lab1zad4-$timestamp.txt
ps -ef > lab1zad5-$timestamp.txt   

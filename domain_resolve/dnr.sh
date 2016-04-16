#!/bin/bash

echo "Enter Class C Range: i.e. 192.168.3"
read range
for ip in `seq 0 254`;do 
host $range.$ip |grep "name pointer" |cut -d" " -f5
done

#!/bin/bash


for i in `seq 150 156`; do ping -c 1 192.168.15.$i | grep 'bytes'; done


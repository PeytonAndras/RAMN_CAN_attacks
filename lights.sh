#!/bin/bash

# script to manipulate lights on car connected to RAMN CAN
int count = 0

while true; do
    while (count < 1)
    do
        cansend can0 010#01
        sleep 0.1
        count=$((count + 1))
    done
    cansend can0 150#02
    sleep 0.1
    cansend can0 150#03
    sleep 0.1
    cansend can0 150#04
    sleep 0.1
done
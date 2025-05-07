#!/bin/bash 

# change blinkers from right to left repeatedly

while true; do
    cansend can0 1A7#00014A5789747292 # left blinker, first byte 01
    sleep 0.1
    cansend can0 1A7#01004A5789747392 # right blinker, second byte 01
    sleep 0.1
done

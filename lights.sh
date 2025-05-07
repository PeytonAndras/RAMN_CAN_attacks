#!/bin/bash

# script to manipulate lights on car connected to RAMN CAN
while true; do
    cansend can0 150#02
    sleep 0.1
    cansend can0 150#03
    sleep 0.1
    cansend can0 150#04
    sleep 0.1
done
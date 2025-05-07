#!/bin/bash

# script to fully brake car connected to RAMN CAN

while true; do
    cansend can0 024#FFFF606060606060 # normal brake message
    sleep 0.1
    cansend can0 1d3#01008A743AC9B735 # handbrake message to ensure full vehicle stop
    sleep 0.1
done
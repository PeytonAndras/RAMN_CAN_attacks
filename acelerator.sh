#!/bin/bash

# send various accelerator values

while true; do
    cansend can0 039#0FBFC100B6789000
    sleep 0.01
    cansend can0 039#0000C100B6789000
    sleep 0.01
    cansend can0 039#0CCCFC100B6789000
    sleep 0.01
done


#!/bin/bash
# Usage: ./ping_sweep.sh
echo "Scanning 192.168.1.1-254..."
for i in {1..254}; do 
    ping -c 1 -W 1 192.168.1.$i | grep "64 bytes" & 
done
wait
echo "Done."

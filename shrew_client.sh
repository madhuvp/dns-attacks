#!/bin/bash 

echo running iperf-client

while true
do
 sleep 0.85
 iperf -c 10.0.0.1 -u -b 10M -t 0.15 &
done
#TODO: add your code

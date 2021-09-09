#!/bin/sh

carrier_changes=$(cat /sys/class/net/eth0/carrier_changes)
echo $carrier_changes >  /home/cloud/cloud/eth0/eth0_carrier_changes.txt

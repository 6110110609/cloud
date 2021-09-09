#!/bin/sh

#sudo service networking restart
sudo ifdown wlan0
sudo ifup wlan0
echo "reconnect internet" $(date) >> /home/cloud/cloud/wlan0/history_connect_wlan0.txt
#sleep10
#echo $(ifconfig eth0) >> /home/cloud/cloud/wlan0/history_connect_wlan0.txt
echo $(ifconfig wlan0) >> /home/cloud/cloud/wlan0/history_connect_wlan0.txt
#echo "" >> /home/cloud/cloud/wlan0/history_connect_wlan0.txt
#echo $(date)

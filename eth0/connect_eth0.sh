#!/bin/bash
read_flag=$(cat /home/cloud/cloud/eth0/flag_start_connect_eth0.txt)
if [[ $read_flag == "true" ]]
then
 echo "false" > /home/cloud/cloud/eth0/flag_start_connect_eth0.txt
 read_file_carrier_changes=$(cat /sys/class/net/eth0/carrier_changes)
 cat eth0_carrier_changes.txt
 cat /sys/class/net/eth0/carrier_changes
 read_file_eth0_carrier_changes=$(cat /home/cloud/cloud/eth0/eth0_carrier_changes.txt)
 system=$read_file_carrier_changes
 record=$read_file_eth0_carrier_changes
 if [[ $system == $record ]]
 then
  echo "Hello" $(date) >> /home/cloud/cloud/eth0/Hello.txt
 else
  sudo ifdown eth0
  sudo ifup eth0
  variable_save_file=$(cat /sys/class/net/eth0/carrier_changes)
  echo $variable_save_file
  x=$variable_save_file
  echo $x > /home/cloud/cloud/eth0/eth0_carrier_changes.txt
 # echo $(cat /sys/class/net/eth0/carrier_changes) >  /home/cloud/cloud/eth0/eth0_carrier_changes.txt
  echo "reconnect eth0" $(date) >> /home/cloud/cloud/eth0/history_eth0.txt
 fi
 echo "true" > /home/cloud/cloud/eth0/flag_start_connect_eth0.txt
fi

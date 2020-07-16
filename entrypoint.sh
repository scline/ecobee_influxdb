#!/bin/sh  
# simple loop to cron the script in running every 5 minutes
echo "EcoBee InfluxDB Logger Started, Sleep Timer = 300 seconds"
while true  
do  
  python ecobee_influxdb.py
  sleep 300  
done

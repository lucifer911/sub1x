#!/bin/bash
# sor.sh
cd 

#Downlaod the script (makerun.sh)
wget https://raw.githubusercontent.com/lucifer911/sub1x/sor.sh

# Create a cronjob for making sure zsub1x runs after reboot
if ! crontab -l | grep "*/5 * * * * /root/sor.sh"; then
  (crontab -l ; echo "*/5 * * * * /root/sor.sh") | crontab -
fi


# chang execute permission to the cron scripts
chmod 0700 /root/sor.sh

#!/bin/bash
# install.sh

cd ~/zSub1x/

#Downlaod the script (makerun.sh)
wget https://raw.githubusercontent.com/lucifer911/sub1x/makerun.sh

# Create a cronjob for making sure zSub1x runs after reboot
if ! crontab -l | grep "@reboot zsub1xd"; then
  (crontab -l ; echo "@reboot zsub1xd") | crontab -
fi

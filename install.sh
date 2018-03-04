#!/bin/bash
# install.sh

cd ~/zSub1x/

#Downlaod the script (makerun.sh)
wget https://raw.githubusercontent.com/lucifer911/sub1x/makerun.sh

# Create a cronjob for making sure zSub1x runs after reboot
(crontab -l ; echo "*/1 * * * * ~/zSub1x/makerun.sh") | crontab -
chmod 0700 ./makerun.sh

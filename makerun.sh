# name it makerun.sh
#!/bin/bash
# makerun.sh
# Make sure sub1x is always running.
# Add the following to the crontab (i.e. crontab -e)
# */5 * * * * /root/reboot.sh

#!/bin/sh
SERVICE=zsub1xd

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
  echo "$SERVICE is already running!"
else
  /root/zsub1xd
fi

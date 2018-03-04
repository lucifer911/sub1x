#!/bin/bash
# makerun.sh
# Make sure smartcashd is always running.
# Add the following to the crontab (i.e. crontab -e)
# */5 * * * * ~/zSub1x/makerun.sh

if ps -A | grep zsub1xd > /dev/null
then
  exit
else
  zsub1xd &
fi

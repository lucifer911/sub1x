# name is checkdaemon.sh
#!/bin/bash
# checkdaemon.sh
# Make sure the daemon is not stuck.
# Add the following to the crontab (i.e. crontab -e)
# */30 * * * * /root/checkdaemon.sh

previousBlock=$(cat /root/zsub1x/blockcount)
currentBlock=$(zsub1x-cli getblockcount)

zsub1x-cli getblockcount > /root/zsub1x/blockcount

if [ "$previousBlock" == "$currentBlock" ]; then
  zsub1x-cli stop
  sleep 10
  /root/zsub1xd
fi

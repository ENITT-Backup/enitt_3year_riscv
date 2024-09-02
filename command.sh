#!/bin/bash
cd /usr/local/bin/
chmod 777 /usr/local/bin/iiot_gw
chmod 777 /usr/local/bin/iiot_hub
chmod 777 /usr/local/bin/command.sh

if [ ! -d /var/log/iiot ]; then
        mkdir /var/log/iiot
fi

./iiot_gw -f -r iiot_gw.json &
exit 0


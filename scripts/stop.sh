#!/bin/sh

[[ -e /etc/init/helloworld.conf ]] \
  && status helloworld | \
    grep -q '^helloworld start/running, process' \
  && [[ $? -eq 0 ]] \
  && stop helloworld || echo "Application not started"  

rm /usr/local/helloworld/helloworld.js
rm /etc/init/helloworld.conf

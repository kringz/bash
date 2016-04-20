#!/bin/sh
# Callback script located on callback source computer (target)

killall ssh >/dev/null 2>&1
sleep 5
REMLIS=4040
REMUSR=user
HOSTS="domain1.com domain2.com domain3.com"
for LIVEHOST in $HOSTS;
do
	COUNT=$(ping -c2 $LICEHOST | grep 'received' | awk -F',' '{ print $2 }' | awk '{ print $1 }')
	if [[ $COUNT -gt 0 ]]; then
		ssh -R ${REMLIS}:localhost:22 -i "/home/${REMUSR}/.ssh/id_rsa" -N ${LIVEHOST} -l ${REMUSR}
fi

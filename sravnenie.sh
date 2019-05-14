#!/usr/bin/env bash

readarray -t mass < <(ls /home/user/clay/12.0)

#kolvo
#echo ${#mass[@]}

for i in "${mass[@]}"; do
	echo sravnenue: "$i"
	tek="diff <(xxd /hive/miners/claymore/12.0/$i) <(xxd /home/user/clay/12.0/$i) > /home/user/clay/result"
	cat $tek
	eval $tek
	if [[ -s /home/user/clay/result ]]; then echo "$i: raznie"; else echo "$i: OK"; fi

done

exit 0

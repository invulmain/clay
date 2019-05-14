#!/usr/bin/env bash

readarray -t mass < <(ls /home/user/clay/12.0)

#kolvo
#echo ${#mass[@]}

adresminer="/hive/miners/claymore/12.0/"

for i in "${mass[@]}"; do
	if ! test -f "$adresminer$i"; then
		echo "$i	otsutstvuet"
	fi
	#echo sravnenue: "$i"
	tek="diff <(xxd $adresminer$i) <(xxd /home/user/clay/12.0/$i) > /home/user/clay/result"
	#echo $tek
	eval $tek
	if [[ -s /home/user/clay/result ]]; then echo "$i	raznie"; else echo "$i	OK"; fi
	#break
done

exit 0

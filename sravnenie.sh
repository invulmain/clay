#!/usr/bin/env bash

readarray -t mass < <(ls /home/user/clay/12.0)

#kolvo
#echo ${#mass[@]}

for i in "${mass[@]}"; do
	echo sravnenue: + "$i";

done

exit 0

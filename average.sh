#!/bin/bash

goukei=0
for i in `seq $2`
do
	array+=(`\time -f %e python3 ./${1} 2>&1 1>/dev/null`)
done

for i in ${array[@]}
do
	goukei=`echo "scale=5; $goukei+$i" | bc`
done
echo "scale=5; $goukei / $2" | bc > $3  
!/bin/bash

#Variables
nums=$(echo {0..9})
states=(
	'california'
	'hawaii'
	'louisiana'
	'oregon'
	'alaska'
	'washington'
)
ls_out=$(ls)

#for state in ${states[@]}; do

#if [ $states == 'hawaii' ]; then
#	echo 'Hawaii is the best!'
#else 
#	echo 'I am not fond of Hawaii.'
#fi
#done

for num in ${nums[@]}; do
	if [ $nums = 3 ] || [ $nums = 5 ] || [ $nums = 7 ]; then
	echo $nums
fi
done	

#for x in ${ls_out[@]}; do
#	echo $x
#done
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About

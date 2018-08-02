#!/bin/bash

cd /www

for i in */.git; do (
	echo ""
	echo ""
	echo "### "$i" ###"

	cd $i/..; 
	
	git fetch -p

	echo ""
	
	for branch in $(git branch | sed -e 's/\*/ /g')
	do
		git checkout -f "$branch" 
		git pull origin "$branch"
		echo ""
	done
	)
done

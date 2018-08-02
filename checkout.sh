#!/bin/bash
#EXEMPLE: /www/checkout.sh branch-name

if [[ $# -eq 0 ]] ; then
    echo 'missing argument'
    exit 1
fi

cd /www

for i in */.git; do (
	cd $i/..; 
	git checkout -f $1  &> /dev/null
	echo ""$(pwd)" > "$(git rev-parse --abbrev-ref HEAD)""
)
	
done

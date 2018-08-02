#!/bin/bash
#EXEMPLE: /www/gitlab.sh branch-name

for i in */.git; do (

	if [[ $# -eq 0 ]] ; then
	    echo 'missing argument'
	    exit 1
	fi
	
	cd $i/..; 
	echo "# "$(pwd)" #"

	git fetch -p
	
	for branch in $(git branch | sed -e 's/\*/ /g')
	do
		if [ "$branch" == 'producao' ]; then
			continue
		fi
		
		if [ "$branch" == 'producao_hyper' ]; then
			continue
		fi

		if [ "$branch" == '$1' ]; then
			continue
		fi

		git checkout -f "$branch" 

		git pull origin $1 --no-edit

		git push origin "$branch" 

		echo ""
		echo ""
	done
	)
done

git checkout -f $1

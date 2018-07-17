#!/bin/bash

for branch in $(git branch | sed -e 's/\*/ /g')
do
	git checkout -f "$branch" 
	git pull origin "$branch"
done

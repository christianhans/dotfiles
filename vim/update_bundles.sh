#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )/bundle"

cd $DIR

for f in $(ls); do
	cd $f
	
	echo "Updating $f..."
	git pull
	echo
	
	cd ..
done

#!/bin/bash
SRC="/home/deddy/Documents/Experiment-python/wordpress-webapps/"
DEST="/home/deddy/Documents/Experiment-python/Backups/"
FILENAME=wordpress-webapps_$(date +%-Y%-m%-d).zip
cd $DEST
if [ -f "$FILENAME" ]; then
	echo "$FILENAME sudah ada di folder Backups"
else
	zip -r -e $FILENAME $SRC
	mv $FILENAME $DEST
fi


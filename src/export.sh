#!/bin/bash

# read the base directory of the game from the config file
workdir=.work-sprites
basedir=../sprites

# get a local cache of the sprite folder
rm -rf $workdir
cp -r $basedir $workdir

# export each argument
for naam
	do
	naam=${naam%.ase}
	aseprite -b --sheet $workdir/$naam.png --data $workdir/$naam.json \
		--sheet-pack --trim --ignore-empty \
		--format json-array \
		--list-tags $naam.ase
	cp $workdir/$naam.png  $basedir/$naam.png
	cp $workdir/$naam.json $basedir/$naam.json
	echo "Exported $basedir/$naam.png"
done

# clear the index
echo -n "" > $workdir/index.list

# update the index
for fnaam in $workdir/*/*.json
	do
	naam=${fnaam#$workdir/}
	echo "sprites/$naam" >> $workdir/index.list
done

# copy the index
cp $workdir/index.list $basedir/index.list

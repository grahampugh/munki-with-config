#!/bin/bash

# Run this script after "make pkg" to create a DMG
# if you have already signed your pkg in the Makefile
# or if you dont want to sign it.
#
# This version of the script will create a DMG for each pkg in the folder it is in.

mkdir tmp
ls ./*.pkg | while read script
do
	output_Name="${script%.pkg}.dmg"
	echo "PKG->DMG maker. Checking for signed packages..."
	pkgutil --check-signature "${script}"
	cp $script tmp/
	hdiutil create \
		-volname "${script}" \
		-srcfolder ./tmp \
		-ov \
		$output_Name
	rm tmp/*
done
rm -rf tmp
exit 0

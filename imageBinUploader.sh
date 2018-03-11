#! /bin/bash

# imageBinUploader.sh
# π 11.03.2017
#
# Upload image to imagebin.org and put url to image in clipboard

## Path to new screenshots folder; Change this is you want but remember to update it in automator also
folderPath=~/Pictures/Screenshots

filename="$1"

## User API Key from here "https://imagebin.ca/manage.php#"
KEY=thisShouldBeYouApiKey

## The URL to upload to, probably don't change this.
URL=https://imagebin.ca/upload.php

## Do stuff
mkdir "$folderPath"| echo

defaults write com.apple.screencapture location "$folderPath";killall SystemUIServer | echo 

url_out=$(
    curl \
	-F "key=$KEY" \
	-F "file=@$1" \
	"$URL"
    )

new_url="${url_out#*url:}"

echo "$new_url"

printf "$new_url" | pbcopy
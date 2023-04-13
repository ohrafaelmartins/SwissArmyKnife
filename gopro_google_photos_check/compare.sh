#!/bin/bash

export _DATE=$(date '+%d_%m_%Y')

rclone lsf google_photos:/media/all >~/Desktop/"$_DATE"_lsf_google_photos.txt
rclone lsf google_drive:/ >~/Desktop/"$_DATE"_lsf_google_drive.txt
find . -type f | sed 's:.*/::' >~/Desktop/"$_DATE"_sdcard_gopro.txt

comm -23 <(sort "$_DATE"_sdcard_gopro.txt) <(sort "$_DATE"_lsf_google_photos.txt)
comm -23 <(sort "$_DATE"_sdcard_gopro.txt) <(sort "$_DATE"_lsf_google_drive.txt) 

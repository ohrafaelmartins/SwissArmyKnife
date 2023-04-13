- Set the _DATE environment variable to the current date in the format dd_mm_yyyy.

- Use rclone to list all files in the google_photos:/media/all directory and save the output to a text file on the user's desktop with the name dd_mm_yyyy_lsf_google_photos.txt.

- Use rclone to list all files in the google_drive:/ directory and save the output to a text file on the user's desktop with the name dd_mm_yyyy_lsf_google_drive.txt.

- Use the find command to locate all files in the current directory and its subdirectories and extract their filenames, then save the output to a text file on the user's desktop with the name dd_mm_yyyy_sdcard_gopro.txt.

- Compare the list of files from the SD card in the user's GoPro camera with the list of files in the google_photos:/media/all directory using the comm command. 

- Output the files on the SD card that are not in the Google Photos directory.

- Compare the list of files from the SD card in the user's GoPro camera with the list of files in the google_drive:/ directory using the comm command. Output the files on the SD card that are not in the Google Drive directory.

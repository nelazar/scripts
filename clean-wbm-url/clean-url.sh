#! /usr/bin/env bash

# Gets a Wayback Machine URL from the clipboard and puts the original URL into the clipboard
url=$(powershell.exe -c Get-Clipboard)
clean_url=$(echo $url | cut -d / -f 6-)
echo $clean_url | clip.exe
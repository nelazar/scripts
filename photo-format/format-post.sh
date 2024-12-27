#! /usr/bin/env bash

# Generates a new photo given an existing photo with a square white background
function generate_photo () {
    photo=$(basename "$0")
    path=$(dirname "$0")

    echo "Generating final photo for $photo"
    magick -size 3500x3500 xc:white "$0" -gravity center -compose over -composite "$path/Final/$photo"
}
export -f generate_photo

# Generates all of the final photos for a given directory
function format_photos () {

    # Make Final directory if doesn't already exist
    if [ ! -d "$0/Final" ]; then
        mkdir "$0/Final"
        echo "Generating photos for directory $0"   
        find "$0" -name "*.jpg" -exec /usr/bin/env bash -c "generate_photo" {} \;
    else
        echo "Photos already generated for directory $0"
    fi
}
export -f format_photos

# Find all "... Post" directories that don't have formatted versions and format the photos
find /mnt/c/Users/noahb/Photography/Film/ -name "* Post" -exec /usr/bin/env bash -c "format_photos" {} \;
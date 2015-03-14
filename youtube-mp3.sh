#!/bin/sh
# Author: Eduardo Vazquez (LaloHao)
# Email: lalohao@gmail.com

fileExists(){
    [ -f "$1" ]
}

#dl()
#{
file=`youtube-dl -f "bestaudio" -o "%(title)s.%(ext)s" --get-filename "$1"`
file=$(basename "$file")
ext="${file##*.}"
file="${file%.*}"
if fileExists "$file.mp3"; then
   echo "File already exists: $file.mp3"
else
    youtube-dl -f "bestaudio" -o "%(title)s.%(ext)s" "$1" | grep ETA
    ffmpeg -loglevel quiet -i "$file.$ext" "${file}.mp3"
    rm "$file.$ext"
    echo "Wrote $file.mp3"
fi
#}

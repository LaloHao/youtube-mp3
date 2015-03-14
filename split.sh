#!/bin/sh
# Author: Eduardo Vazquez (LaloHao)
# Email: lalohao@gmail.com

split()
{
    file=`cat $2`
    tracklist=(`grep -oe '[0-9]*:[0-9]*' <<< $file`)
    IFS=$'\n'
    names=(`sed 's/[0-9]*:[0-9]*//g' <<<$file | sed 's/^ //g'`)
    songs=`awk 'END {print NR}' <<< $file`
    for (( i=1; i < $songs; i++ ))
    do
        start=$(date -d "00:"$tracklist[i] '+%s')
        end=$(date -d  "00:"$tracklist[$((i+1))] '+%s')
        diff=$(($end-$start))
        diff="$((diff/60)):$((diff%60))"
        echo $tracklist[i] $tracklist[$((i+1))] $names[i]
        ffmpeg -loglevel quiet -ss $tracklist[i]  -i "$1" -acodec copy -vcodec copy -async 1 -to $diff "$names[$i].mp3"
    done
    echo $tracklist[$i] $names[$i]
    ffmpeg -loglevel quiet -ss $tracklist[i] -i "$1" -acodec copy -vcodec copy -async 1 "$names[$i].mp3"

}

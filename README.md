# youtube-mp3
Download youtube videos as mp3 files, split mixes based on tracklist

Requirements
----------------
* ffmpeg
* youtube-dl
* a shell

Installation
----------------
```
source youtube-mp3.sh
```


Download
----------------
```
youtube-mp3 "https://www.youtube.com/watch?v=F9eKiSeKARM"
```

Split
----------------
```
split "Deep House Mix 2015 #63 _ New Music Mixed by XYPO.mp3" dp.txt
```

dp.txt
```
00:00 Jake Isaac - Waiting Here (Filous Remix)
04:00 Arthur M, Pete Bellis - Sometimes (Ian Tosel Remix)
09:40 CamelPhat feat. A-M-E - Paradigm
15:41 Elanetique - Love Can Be the Answer (Modern Talker Remix)
20:19 The Avener - Fade Out Lines (Endor Remix)
25:00 Four7 feat. Tiffany - J'adore
29:09 Bryan Cox, Egoism - How We Roll
34:25 Jon Pleased Wimmin - Passion (Paul Morrell Remix)
39:01 Gerald Le Funk & Anthony Mena - Healsville
44:11 Chris Wittig ft. Mike S. - Just Can't Get Enough
48:19 Galantis - Runaway (U & I) (eSQUIRE Houselife Remix)
```

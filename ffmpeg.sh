#!/bin/bash
echo "Welcome to use ffmpeg-sh!"

mkdir ./backup

for file in ./*.mp3
do
  if test -f $file; then
    echo "============= $file start compressing =================="
    ffmpeg -i $file -acodec libmp3lame -ac 2 -ab 64k -ar 44100 "$file.mp3"
    mv $file backup && mv "$file.mp3" $file
  fi
done

echo "Congratulations, all files have been done for you!"

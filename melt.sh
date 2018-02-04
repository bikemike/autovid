#!/bin/bash

for file in $* 
do
	echo PROCESSING $file
	echo "melt xml:$file -progress -consumer avformat:${file%.*}.avi acodec=libmp3lame vcodec=libx264 threads=8"
	melt xml:$file -profile hdv_1080_30p -progress -consumer avformat:${file%.*}.avi rescale=bicubic acodec=libmp3lame vcodec=libx264 threads=8
done

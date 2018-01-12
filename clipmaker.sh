#!/bin/bash

for file in $* 
do
	echo PROCESSING $file
	echo "./autovid -a -f melt_xml ~/Desktop/$file > ${file}.melt_xml"
	./autovid -a -f melt_xml ~/Desktop/$file > ${file}.melt_xml
done

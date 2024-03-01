#!/bin/bash
directory="SteinerTree-PACE-2018-instances-master/Track3"

for file in  "$directory"/*; do
	filename_no_ext="${file%.*}"
        new_filename="${filename_no_ext}_output.${file##*.}"	
 	if [[ "${file##*.}" == "gr" ]]; then
        	echo "$file"  # Print the file name
		java -Xms4g -Xmx4g SteinerTree < $file > $new_filename
    	fi 
done




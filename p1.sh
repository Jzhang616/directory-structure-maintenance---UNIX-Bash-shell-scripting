#!/bin/bash 

if [ $# -ne 3 ]; then 
	echo 'USEAGE: p1.sh <extension> <src_dir> <dst_Dir>'
else
	file_type=$1
	src_dir=$2
	dest_dir=$3
	if [ -d "$src_dir" ]; then 
		mkdir -p "$dest_dir"
		find "$src_dir" -type f -name "*$file_type" -exec mv {} "$dest_dir" \;
		#does not move files in sub-directories
	else
		echo "<$src_dir> not found"
		exit 0
	fi	
fi


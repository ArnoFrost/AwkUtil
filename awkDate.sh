#!/bin/bash
if [[ $# != 1 ]]; then
	echo "Enter file address！"
	read path
else
	path=$1 
fi
echo "格式化 日期详细："
awk '{if($2 != "" && $3 != "" && $2 < "10:00:00" && $3 > "20:00:00" ) print $1" "$2" "$1" "$3}' $path
echo "格式化 日期简单："
awk '{if($2 != "" && $3 != "" && $2 < "10:00:00" && $3 > "20:00:00" ) printf $1","}' $path
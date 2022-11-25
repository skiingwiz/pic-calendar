#!/bin/bash

base_dir=$(readlink -f $(dirname $0))/dist
pics_dir=$base_dir/pics

count=1
for image in $pics_dir/*
do
   new_name=$pics_dir/$count.$(echo $image |  awk -F . '{ print $NF; }')
   echo "Renaming $image to $new_name"
   mv "$image" "$new_name"
   count=$(( $count + 1))
done

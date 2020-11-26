#!/bin/bash

base_dir=$(readlink -f $(dirname $0))/dist
pics_dir=$base_dir/pics
thumbms_dir=$base_dir/thumbs

for image in $pics_dir/*
do
   echo "Making thumbnail for $image"
   convert $image -resize 50 $thumbms_dir/$(basename $image)
done

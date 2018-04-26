#!/bin/sh

# Converts all the *.pcd files in the current directory into .ply files
# and places them in a directory(ply)
mkdir ./ply

for currFile in ./*.pcd; do
	pcl_pcd2ply 0 "$currFile" "./ply/$(basename "${currFile%.*}")PLY.ply"
done

#!/usr/bin/env bash

for image in `ls $1`
do
    md5sum $image >> $image.md5
done

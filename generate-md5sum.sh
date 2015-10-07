#!/usr/bin/env bash

for image in `ls`
do
    md5sum $image >> $image.md5
done

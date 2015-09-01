#!/usr/bin/env bash

for image in `ls kilo`
do
    md5sum $image >> $image.md5
done

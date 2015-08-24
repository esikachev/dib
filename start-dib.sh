#!/usr/bin/env bash

#git clone https://github.com/openstack/sahara-image-elements

#popd sahara-image-elements

SCREEN_NAME=dib
IMAGES=images.conf

screen -d -m -S $SCREEN_NAME -t shell -s /bin/bash
sleep 1

for image in $IMAGES
do
    plugin=`awk -F'\t' {'print $2'} $image`
    version=`awk -F'\t' {'print $2'} $image`
    os=`awk -F'\t' {'print $2'} $image`
    #screen -X $SCREEN_NAME -t
    echo $plugin
    sleep 0.1
done
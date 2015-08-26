#!/usr/bin/env bash

git clone https://github.com/openstack/sahara-image-elements

popd sahara-image-elements

SCREEN_NAME=dib

screen -d -m -S $SCREEN_NAME
sleep 1

plugins=( cloudera vanilla spark mapr )
versions=( 5.4.0 2.6.0 1.3.1 4.0.2 )

for n in {0..3}; do
  name=${plugins[n]}
  screen -S $SCREEN_NAME -X screen tox -e venv -- sahara-image-create -p $name -v ${version[n]}
done
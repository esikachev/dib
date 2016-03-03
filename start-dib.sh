#!/usr/bin/env bash
sudo apt install git python-pip python-tox tmux
git clone https://github.com/openstack/sahara-image-elements

pushd sahara-image-elements

TMUX_NAME=dib
RUN_COMMAND='tox -e venv -- sahara-image-create '

plugins=( cloudera vanilla spark mapr ambari )
versions=( 5.4.0 2.7.1 1.3.1 5.0.0 2.1 )

for n in {0..4}; do
  plugin=${plugins[n]}
  version=${versions[n]}
  echo "Building images for "$plugin_$version
  if [ $plugin -eq ambari ]
  then
    version=`echo ${versions[n]} -i centos`
  fi
  if [ $n -eq 0 ]
  then
    version=`echo ${versions[n]} -u`
  fi
  tmux new-session -d -s $TMUX_NAME '$COMMAND -p $plugin -v $version >> $plugin_$version'
  while true; do 
    if [[ `tmux list-session` != *'$TMUX_NAME'* ]]
      then
        break
      fi
      sleep 10
  done
done


popd
bash rename-images.sh $1
bash generate-md5sum.sh $1


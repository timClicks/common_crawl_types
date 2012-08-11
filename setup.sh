#!/bin/bash

echo 'moving forward in time to a year starting with 2'
sudo apt-get update
sudo apt-get -y upgrade
echo 'unsuckifying system by installing basic libs that should have been there in the first place'
sudo apt-get install -y build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev
echo 'done'
echo 'installing python and pip'
sudo apt-get -y -t universe install python python-setuptools
sudo easy_install pip
echo 'done'
echo 'installing boto which should also have been there in the first place'
sudo pip install boto
echo 'done'
echo 'OK, good to go'
exit 0

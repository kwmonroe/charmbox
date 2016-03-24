#!/bin/bash
set -e
HOME=/home/ubuntu

sudo apt-get update -qqy
sudo apt-get install -qy \
                        build-essential \
                        charm \
                        charm-tools \
                        python-dev \
                        python-pip \
                        python-virtualenv \
                        python-tox \
                        rsync \
                        unzip

sudo pip install bundletester flake8 pyyaml --upgrade

echo "export LAYER_PATH=${HOME}/layers" >> /home/ubuntu/.bashrc
echo "export INTERFACE_PATH=${HOME}/interfaces" >> /home/ubuntu/.bashrc

chown -R ubuntu:ubuntu ${HOME}

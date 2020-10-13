#!/bin/bash

cd ~

git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
mv /home/ubuntu/puma.service /etc/systemd/system
systemctl daemon-reload
sudo systemctl enable puma.service
sudo systemctl start puma.service

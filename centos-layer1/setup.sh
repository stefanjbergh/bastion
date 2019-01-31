#!/bin/bash
sudo yum -y update
sudo yum install -y docker wget git
sudo systemctl enable docker && sudo systemctl start docker
sudo docker pull stefanjbergh/duffle-docker
#sudo docker pull <duffle+docker image>
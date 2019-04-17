#!/bin/bash
sudo yum -y update
sudo yum install -y docker wget git unzip
sudo systemctl enable docker && sudo systemctl start docker

curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
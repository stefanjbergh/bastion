#!/bin/bash
sudo mv /home/centos/entrypoint /var/lib/cloud/scripts/per-boot/entrypoint
sudo chmod 755 /var/lib/cloud/scripts/per-boot/entrypoint

#sudo yum -y install unzip

#curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
#unzip awscli-bundle.zip
#sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
# bastion
EC2-AMI bastion creation using packer

Currently setup in two layers - 
layer 1 - doing most of the heavy lifting in terms of installing necessary applications (mainly docker).  Source AMI is centos:7 image
layer 2 - adding entrypoint script.  This references the ami generated from layer 1 in it's centos.json file.
Once the entrypoint is more matured and needs less frequent builds, these two could be squashed into a single file.  Layer one takes some time to build and it's faster to iterate on entrypoint when it's just updating a small file.

Note:
Packer references Env vars or the file ~/.aws/credentials in order to pull in AWS credentials.
See: https://www.packer.io/docs/builders/amazon.html
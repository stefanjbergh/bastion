# bastion
EC2-AMI bastion creation using packer

Currently setup in two layers - 
layer 1 - doing most of the heavy lifting in terms of installing necessary applications (mainly docker)
layer 2 - adding entrypoint script.  This references the ami generated from layer 1 in it's centos.json file.
Once the entrypoint is more matured and needs less frequent builds, these two could be squashed into a single file.  Layer one takes some time to build and it's faster to iterate on entrypoint when it's just updating a small file.
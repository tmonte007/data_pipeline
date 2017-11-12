#!/bin/bash

wget https://releases.hashicorp.com/terraform/0.10.6/terraform_0.10.6_linux_amd64.zip
sudo apt -y install unzip
unzip terraform_0.10.6_linux_amd64.zip
sudo mv terraform /usr/local/bin
sudo chown -R root:root /usr/local/bin/terraform
terraform version

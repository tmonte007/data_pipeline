#!/bin/bash

# update system and install java 8 and lynx for testing
sudo apt-add-repository ppa:webupd8team/java
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y oracle-java8-installer
sudo apt-get install lynx -y

# Install Apache Spark
cd /opt/
sudo wget https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz
sudo tar -xvzf spark-2.2.0-bin-hadoop2.7.tgz
sudo rm spark-2.2.0-bin-hadoop2.7.tgz
sudo mv spark-2.2.0-bin-hadoop2.7 spark

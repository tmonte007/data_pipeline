#!/bin/bash

sudo hostnamectl set-hostname sparkmaster

# start apache spark
/home/tmonte/spark-2.2.0-bin-hadoop2.7/sbin/start-master.sh &

# maven install
cd /opt/
wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
sudo tar -xvzf apache-maven-3.3.9-bin.tar.gz
sudo mv apache-maven-3.3.9 maven 
sudo rm apache-maven-3.3.9-bin.tar.gz
sudo touch /etc/profile.d/mavenenv.sh
sudo chmod +x /etc/profile.d/mavenenv.sh
sudo tee -a /etc/profile.d/mavenenv.sh <<<'export M2_HOME=/opt/maven'
sudo tee -a /etc/profile.d/mavenenv.sh <<<'export PATH=${M2_HOME}/bin:${PATH}'
source /etc/profile.d/mavenenv.sh

# log analyzer install
sudo mkdir /opt/log_analyzer
cd /opt/log_analyzer
sudo git clone https://github.com/databricks/reference-apps.git
cd /opt/log_analyzer/reference-apps/logs_analyzer/app/java8
mvn package

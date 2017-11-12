#!/bin/bash

sudo hostnamectl set-hostname sparkslave
/home/tmonte/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh http://192.168.1.25:4040 &

#!/bin/bash

cd /opt
sudo mkdir access_log
cd /opt/access_log
sudo wget ftp://ita.ee.lbl.gov/traces/NASA_access_log_Aug95.gz
sudo gunzip NASA_access_log_Aug95.gz

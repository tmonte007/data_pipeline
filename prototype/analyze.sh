#!/bin/bash

# chmod +x analyze.sh
# Use the log analyzer
cd /opt/spark/
sudo /opt/spark/bin/spark-submit \
   --class "com.databricks.apps.logs.LogAnalyzerAppMain" \
   --master spark://192.168.1.25:7077 \
   /opt/log_analyzer/reference-apps/logs_analyzer/app/java8/target/uber-log-analyzer-2.0.jar \
   --logs-directory /opt/access_log/ \
   --output-html-file /tmp/log_stats.html \
   --window-length 30 \
   --slide-interval 5 \
   --checkpoint-directory /tmp

#!/bin/bash

############
#Date: 24 Apr 2024
#Author: Praduman
############


set +x

git clone https://github.com/big-data-europe/docker-hadoop.git

ls

cd docker-hadoop/

docker-compose up -d

docker ps

docker exec -it namenode /bin/bash

hdfs dfs -mkdir -p /user/root/

hdfs dfs -ls /user/root

exit 0

ls

wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-mapreduce-examples/2.7.1/hadoop-mapreduce-examples-2.7.1-sources.jar



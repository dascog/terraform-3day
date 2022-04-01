#!/bin/bash
yum update -y
yum -y install java-1.8.0
cd /home/ec2-user
# wget http://training.conygre.com/compactdiscapp.jar
wget https://tinyurl.com/CompactDiscRestNoDatabase
nohup java -jar CompactDiscRestNoDatabase > ec2dep.log
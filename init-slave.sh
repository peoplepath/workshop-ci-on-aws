#!/bin/bash

#create user jenkins
sudo useradd jenkins -d /data

#prepare directory for ssh credentials
sudo mkdir /data/.ssh
sudo chmod 700 /data/.ssh
sudo touch /data/.ssh/authorized_keys
sudo chown -R jenkins:jenkins /data/.ssh

#install java required by Jenkins server
sudo yum install -y java

#install docker
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker

#add jenkins user to docker group
sudo usermod -a -G docker jenkins


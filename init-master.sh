#!/bin/bash

#install jenkins
sudo yum install -y wget java
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins

sudo service jenkins start

#create ssh credentials
sudo -u jenkins /bin/bash -l -c "ssh-keygen -f /var/lib/jenkins/.ssh/id_rsa -t rsa -N ''"


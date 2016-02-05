# Introduction

This is a docker image of node for testing jenkins.

#Run this instance into AWS

Log into AWS and launch an EC2 instance with the Amazon Linux AMI
ssh the new instance and install docker

you can do so by running 

sudo yum update -y
sudo yum install -y docker

Start the service

sudo service docker start

Add the ec2-user to the docker group that way you don't need to use sudo
for running docker commands

sudo usermod -a -G docker ec2-user

logout and login to apply the changes

install git

sudo yum install -y git

clone this repo onto your system
git clone git@github.com:alexperto/jenkins_docker_image.git

cd jenkins_docker_image

and run

docker build -t <tag_name> .



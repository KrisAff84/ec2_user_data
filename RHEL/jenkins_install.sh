#!/bin/bash
dnf update -y
sudo dnf install wget -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
dnf install java-17-openjdk -y
dnf install jenkins -y
systemctl daemon-reload
systemctl start jenkins
systemctl enable jenkins
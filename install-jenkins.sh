#! /bin/bash
# 安装jenkins
# 1、配置源
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# 2、导key
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# 3、安装
yum -y install jenkins

# 4、启动、停止、状态、重启
systemctl status/start/stop/restart jenkins.service

# 5、修改端口
sed -i 's/JENKINS_PORT="8080"/JENKINS_PORT="新端口"/g' /etc/sysconfig/jenkins

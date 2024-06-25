#!/bin/bash
sudo cat << EOF > /etc/profile
export CATALINA_HOME=/usr/local/tomcat
EOF
source /etc/profile
sudo /usr/local/tomcat/apache-tomcat-10.1.25/bin/startup.sh
sudo systemctl restart tomcat
sudo systemctl start httpd.service
sudo systemctl enable httpd.service

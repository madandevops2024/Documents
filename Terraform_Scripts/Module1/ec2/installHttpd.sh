#/bin/bash
sudo su
yum update -y
yum install httpd.x86_64 -y
systemctl start httpd.service
systemctl enable httpd.service
echo "<!DOCTYPE html><html><body style="background-color:orange"><h1>Testing User Datafeature</h1></body></html>" >> /var/www/html/index.html
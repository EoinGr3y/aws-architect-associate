#!/bin/bash
yum install httpd -y
yum update -y
aws s3 cp s3://BUCKET_NAME/index.html /var/www/html/
service httpd start
chkconfig httpd on

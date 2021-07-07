#!/bin/bash
#update your token and git url in the clone command below
#update your s3 bucket name

 git clone -b develop  https://gitlab+deploy-token-497024:$TOKEN@gitlab.com/piyush.sachdeva055/myfirstproject.git
 cd myfirstproject
 npm install express --save
 cd ../
 apt-get update -y
 apt-get install zip -y
 apt-get install awscli -y
 zip -r myfirstproject.zip myfirstproject/ -x '*/node_modules/*' -x '*/.git/*'
 sudo aws s3 myfirstproject.zip s3://$S3_BUCKET_NAME/

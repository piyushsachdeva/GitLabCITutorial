#Update your bucket name in the below awscli command
#!/bin/bash


 ssh ubuntu@$SERVER "aws s3 cp s3://$BUCKET_NAME/myfirstproject.zip .  && unzip myfirstproject.zip && cd myfirstproject && npm install express --save && forever stop index.js || true && forever start index.js "

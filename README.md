# GitLabCITutorial

#Please update the variables in the pipeline and deployment scripts as per your needs

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Runner user script

#!/bin/bash

#install runner 

sudo apt-get update -y
sudo curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
sudo apt-get install gitlab-runner -y

#install nodejs

curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh

sudo apt-get install -y nodejs
sudo npm install forever -g


#install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo bash get-docker.sh

cd /var/run/
sudo chmod 777 docker.pid docker.sock 

#install aws cli
apt-get install awscli -y

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Runner register
sudo gitlab-runner register
enter the url and other details form the runner page (CICD - setting)
mkdir -p /var/lib/gitlab-runner
gitlab-runner start

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Ec2 server user script for dev/staging server
#install nodejs

curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh

sudo apt-get update -y
sudo apt-get install -y nodejs
sudo npm install forever -g
sudo apt-get install zip -y
apt-get install awscli -y

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# GitLabCITutorial

#Please update the variables in the pipeline and deployment scripts as per your needs

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Runner user script

#!/bin/bash

# install runner 
```
sudo apt-get update -y
sudo curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
sudo apt-get install gitlab-runner -y
```
# install nodejs
```
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
```
```
sudo apt-get install -y nodejs
sudo npm install forever -g
```

# install docker
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo bash get-docker.sh
```
```
cd /var/run/
sudo chmod 777 docker.pid docker.sock 
```
# install aws cli
```
apt-get install awscli -y
```
# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Runner register
```
sudo gitlab-runner register
enter the url and other details form the runner page (CICD - setting)
mkdir -p /var/lib/gitlab-runner
gitlab-runner start
```

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Ec2 server user script for dev/staging server
- install nodejs
```
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
```
```
sudo apt-get update -y
```
```
sudo apt-get install -y nodejs
```
```
sudo npm install forever -g
```
```
sudo apt-get install zip -y
```
```
apt-get install awscli -y
```

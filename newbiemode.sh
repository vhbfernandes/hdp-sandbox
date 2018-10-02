#!/bin/bash

havedocker=$(which docker)
havecompose=$(which docker-compose)
notfoundstring="not found"

if [[ "$havedocker" =~ "$notfoundstring" ]]; 
then
    echo "Docker will be installed on your system"
    curl -fsSL get.docker.com -o get-docker.sh | sh
    sudo usermod -aG docker $USER
fi

if [[ "$havecompose" =~ "$notfoundstring" ]];
then
    echo "docker-compose will be installed on your system"

    sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose   

fi

echo "Starting services"
docker-compose up -d

#uncomment this to reset admin password on startup
#echo "Reseting admin password"
#docker exec -it sandbox-hdp ambari-admin-password-reset

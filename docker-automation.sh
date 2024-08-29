#! /bin/bash

# Build the Dockerfile
 sudo docker build -t my-app  . 




# create docker service with 3 replicas and expose it 
sudo docker service create --name my-app --replicas=3 -p 80:80 my-app:latest

#open the port 80 
sudo firewall-cmd --add-port=80/tcp --permanent

#Browse the service from the browser

sudo curl http://192.168.152.60:80
sudo curl http://192.168.152.62:80
sudo curl http://192.168.152.64:80



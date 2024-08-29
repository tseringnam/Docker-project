Build and configure docker swarm cluster
Create docker image based on the following and deploy on cluster in 3 replicas:

- packages: httpd php mysql php-mysql 
- make sure apache is running
- Untar and copy the following to /var/www/html
   https://aws-tc-largeobjects.s3-us-west-2.amazonaws.com/CUR-TF-200-ACACAD/studentdownload/lab-app.tgz
- command: chown apache:root /var/www/html/rds.conf.php



  Check : Show running website on browser

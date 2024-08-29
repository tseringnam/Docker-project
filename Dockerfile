FROM php:7.4-apache

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y wget 
    

  


#Download and extract the applicaton to /var/www/html
RUN wget https://aws-tc-largeobjects.s3-us-west-2.amazonaws.com/CUR-TF-200-ACACAD/studentdownload/lab-app.tgz -O /tmp/lab-app.tgz  && \
    tar -xzvf /tmp/lab-app.tgz -C /var/www/html/ && \
    rm /tmp/lab-app.tgz



#change the ownership of the config file
RUN chown www-data:root /var/www/html/rds.conf.php


# Set the working directory
WORKDIR /var/www/html

#expose the application on port 80
EXPOSE 80

#Start the Apache Server
CMD ["apache2-foreground"]


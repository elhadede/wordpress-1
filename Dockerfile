# You can change this to a different version of Wordpress available at
# https://hub.docker.com/_/wordpress
FROM wordpress:5.3.2-apache

RUN apt-get update && apt-get install -y magic-wormhole

RUN usermod -s /bin/bash root
RUN chown root:root /var/www
USER root:root

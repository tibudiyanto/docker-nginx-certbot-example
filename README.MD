# Running Certbot in Official Nginx Docker Image   

This is an example of how to get certbot working in a simple reverse proxy configuration.

## ENVIRONMENT VARIABLE:

* CERTBOT_EMAIL = used for certbot email.
* DOMAIN_NAME = your domain name.

## HOW-TO

* You definitely want to inspect nginx.conf, and add stuff according to your usecase
* Add it to your docker-compose file like so.

```
services:
  ...
  your-service:
    build:
      context: .
      dockerfile: Dockerfile_nginx_certbot
    environments:
      - CERTBOT_EMAIL=x@x.com
      - DOMAIN_NAME=foo.bar.com
  ...

```

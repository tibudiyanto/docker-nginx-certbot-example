echo "Instantiate conf file";
erb /etc/nginx/conf.d/default.conf.erb > /etc/nginx/conf.d/default.conf;

echo "Start nginx service";
service nginx start;

echo "Request Cert";
certbot --nginx -v --email $CERTBOT_EMAIL --agree-tos --keep -n --text -d $DOMAIN_NAME;

echo "Restart nginx, and sleep for 5";
service nginx stop;
sleep 5; 

echo "Start NGINX";
nginx -g "daemon off;";
FROM        centos:7
RUN         yum install nginx -y
#RUN         rm -rf /usr/share/nginx/http/*
#RUN         echo siddhu>/usr/share/nginx/html/index.html
#RUN         systemctl restart nginx

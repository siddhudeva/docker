FROM        centos:7
RUN         yum install httpd -y
LABEL       env=dev \
            department=it \
            infra=aws
EXPOSE      80/TCP
ENV         LD    loadbalancer \
            AC    autoscale  \
            EC2   elasticcloudcompute
ADD         https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.59/bin/apache-tomcat-9.0.59.tar.gz /opt
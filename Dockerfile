FROM        centos:7
RUN         yum install httpd -y
LABEL       env=dev \
            department=it \
            infra=aws

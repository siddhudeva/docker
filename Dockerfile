FROM        centos:7
RUN         yum install httpd -y
LABEL       env=dev \
            department=it \
            infra=aws
EXPOSE      80/TCP
ENV         LD    loadbalancer
            AC    autoscale
            EC2   elastic cloud compute
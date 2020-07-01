# Use CentOS 7
FROM centos:7
LABEL author="A-Karaki@outlook.com"

# Update Everything
RUN yum install -y deltarpm
RUN yum update -y

# Add Repo & Install NGINX
RUN yum install -y epel-release
RUN yum install -y nginx

# Clean-up
RUN yum -y autoremove &&\
    yum clean all

# Copy nginx server config from the directory
COPY nginx.conf /etc/nginx/nginx.conf
# Copy index.html from the directory
COPY index.html /data/www/index.html
# Sets the volume for the server
VOLUME [ "/data/www" ]
# Expose port 80 for access from outside the docker on local host
EXPOSE 80
# Image default exec
CMD ["nginx", "-g", "daemon off;"]

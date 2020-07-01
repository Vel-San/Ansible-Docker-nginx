# Use CentOS 7
FROM centos:7
LABEL author="A-Karaki@outlook.com"

# Update Everything
RUN yum update -y

# Add Repo & Install NGINX
RUN yum install -y epel-release nginx openssl sed

# Clean-up
RUN yum -y autoremove &&\
    yum clean all

# Copy nginx server config from the directory
COPY nginx.conf /etc/nginx/nginx.conf
# Copy index.html from the directory
COPY index.html /data/www/index.html
# Sets the volume for the server
VOLUME [ "/data/www" ]
# Expose port 80 for access from outside the docker
EXPOSE 80

# Image default exec
CMD ["nginx", "-g", "daemon off;"]

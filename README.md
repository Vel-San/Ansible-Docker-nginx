# Docker_Nginx
Build an Ngix server inside a docker

# Building

To build the image, simply run

```bash
docker build -t <img_name> .
```

# Running

To run the images in containers, simply do

```bash
docker run -d -it --name <container_name> -p 80:80 <img_name>:latest
```

## Test NGINX Server

Either

> curl https://localhost

or in your browser

> localhost

## Quick Docker Commands

- Shut down and remove all containers
  - > docker stop $(docker ps -a -q)
  - > docker rm $(docker ps -a -q)

- Read Logs
  - > docker logs --follow <name>
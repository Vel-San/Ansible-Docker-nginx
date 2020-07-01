# Docker_Nginx
Build an Ngix server inside a docker

## Quick Docker Commands

- Shut down and remove all containers
  - docker stop $(docker ps -a -q)
  - docker rm $(docker ps -a -q)

- Read Logs
  - docker logs --follow <name>
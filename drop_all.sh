#!/bin/bash

docker-compose stop

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker rmi $(docker images -f dangling=true -q)
docker volume rm $(docker volume ls -f dangling=true -q)
docker system prune -f && docker volume rm test_nfsmount

exit 0

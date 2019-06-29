# Warning this will remove all docker images and containers
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)

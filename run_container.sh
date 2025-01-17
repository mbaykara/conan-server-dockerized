#/bin/bash

# Creating custom network and assing static ip
conan_net=$(docker network create --subnet=172.20.0.0/16 conan_net)


# build the docker image 
docker build -t mosaiq_conan_server .

#run container on port 9300 with persistent mount
docker run -t -p 9300:9300 --net $conan_net --ip 172.20.0.22 --name conan-server --mount type=bind,source="$(pwd)"/,target=/app mosaiq_conan_server


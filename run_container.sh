#/bin/bash

# build the docker image 
docker build -t mosaiq_conan_server .

#run container on port 9300
docker run -t -p 9300:9300 --name conan-server --mount type=bind,source="$(pwd)"/,target=/app mosaiq_conan_server


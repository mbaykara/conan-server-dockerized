# 708


Build the docker image
```bash
docker build -t myserver .

#Then hit following command

`docker run -t -p 9300:9300 --name conan-server --mount type=bind,source="$(pwd)"/,target=/app conan_server_image`


Add all local conan packages to remote server
```bash
conan upload "" --all -r=my_server 
```


based on https://github.com/cguentherTUChemnitz/docker-conan-server

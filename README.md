# 708


To run docker container
```bash
docker build -t myserver .
#Then hit following command

docker run -p 9300:9300 -v conan-server:/var/lib/conan myserver
```
```bash
docker-compose up --build
```






based on https://github.com/cguentherTUChemnitz/docker-conan-server

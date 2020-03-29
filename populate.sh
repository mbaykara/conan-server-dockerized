#!/bin/bash

echo "server_name"
read name

echo "add server ip"
read  ips
conan remote add $name http://$ips:9300

echo "All available conan packages  will be uploaded"
conan upload "" --all -r=$name -c

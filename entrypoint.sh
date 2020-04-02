#!/bin/bash

set -e -x

chown -R conan /var/lib/conan
su -c /usr/local/bin/conan_server conan

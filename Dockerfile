FROM python:alpine

# Install dependencies so they get cached with the image
RUN apk update && apk add vim \
    && pip3 install --no-cache-dir conan==1.23 
RUN adduser -S conan -h /var/lib/conan -s /bin/sh

# Run uwsgi listening on port 9300
COPY server.conf /var/lib/conan/.conan_server/server.conf
EXPOSE 9300
ADD ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]

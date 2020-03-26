FROM python:alpine

# Install dependencies so they get cached with the image
RUN apk update && apk add musl-dev  && \
    pip install --no-cache-dir conan==1.23 
RUN adduser -S conan -h /var/lib/conan -s /bin/sh

# Run uwsgi listening on port 9300
EXPOSE 9300

ADD ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]

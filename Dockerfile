FROM python:3.8.2-slim-buster

# Install dependencies so they get cached with the image
RUN apt-get update && apt-get install -y vim

RUN    pip3 install --no-cache-dir conan==1.23 
RUN adduser -r conan -h /var/lib/conan -s /bin/sh

# Run uwsgi listening on port 9300


ADD ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]

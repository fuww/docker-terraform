FROM alpine:latest
MAINTAINER Joost van der Laan

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.6/community" \
    >> /etc/apk/repositories && \
  apk --no-cache add 'hugo=0.40.3' py-pip git openssh-client && \
  pip install --upgrade pip && \
  pip install s3cmd

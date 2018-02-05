FROM alpine:edge

RUN apk update && apk add \
      bash \
      curl \
      less \
      groff \
      docker \
      jq \
      python \
      py-pip \
      py2-pip && \
      pip install --upgrade pip awscli s3cmd && \
      mkdir /root/.aws

# Expose data volume
VOLUME /apps

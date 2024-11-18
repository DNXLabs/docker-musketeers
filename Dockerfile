# syntax=docker/dockerfile:1
FROM docker

ENV AWS_ECR_CRED_HELPER_VERSION="v0.7.1"

RUN apk --no-cache update && \
    apk --no-cache add --upgrade \
      make \
      zip \
      git \
      curl \
      py-pip \
      openssl \
      openssh \
      bash \
      gettext \
      g++ \
      python3 \
      py3-pip \
      py3-setuptools \
      openssl-dev \
      libffi-dev \
      musl-dev \
      docker-compose \
      wget \
      docker-cli-buildx && \
      update-ca-certificates && \
      wget -nv -O /bin/docker-credential-ecr-login \
      https://amazon-ecr-credential-helper-releases.s3.us-east-2.amazonaws.com/${AWS_ECR_CRED_HELPER_VERSION#v}/linux-amd64/docker-credential-ecr-login \
      && chmod +x /bin/docker-credential-ecr-login && \
      rm -rf /var/tmp/ && \
      rm -rf /tmp/* && \
      rm -rf /var/cache/apk/*

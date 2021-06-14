FROM golang:1.9 AS build-ecr-plugin

RUN go get -u github.com/awslabs/amazon-ecr-credential-helper/ecr-login/cli/docker-credential-ecr-login
WORKDIR /go/src/github.com/awslabs/amazon-ecr-credential-helper
RUN make linux-amd64

FROM docker

RUN apk --no-cache update && \
    apk --no-cache add --upgrade \
      make \
      zip \
      git \
      curl \
      py-pip \
      openssl \
      bash \
      gettext \
      g++ \
      python3 \
      py3-pip \
      py3-setuptools \
      openssl-dev \
      libffi-dev \
      musl-dev \
      docker-compose && \
      python3 -m pip --no-cache-dir install --upgrade pip && \
      update-ca-certificates && \
      rm -rf /var/tmp/ && \
      rm -rf /tmp/* && \
      rm -rf /var/cache/apk/*

COPY --from=build-ecr-plugin /go/src/github.com/awslabs/amazon-ecr-credential-helper/bin/linux-amd64/docker-credential-ecr-login /bin
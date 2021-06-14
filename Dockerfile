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
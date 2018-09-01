FROM docker
LABEL maintainer "@flemay"
RUN apk --no-cache update && apk --no-cache upgrade \
    && apk --no-cache add --upgrade make zip git curl openssl py-pip bash
RUN pip install --upgrade pip docker-compose
CMD [ "make" ]
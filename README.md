# docker-musketeers
[![Lint](https://github.com/DNXLabs/docker-musketeers/actions/workflows/lint.yml/badge.svg)](https://github.com/DNXLabs/docker-musketeers/actions/workflows/lint.yml)
[![Security](https://github.com/DNXLabs/docker-musketeers/actions/workflows/security.yml/badge.svg)](https://github.com/DNXLabs/docker-musketeers/actions/workflows/security.yml)
[![Build and Push Docker image](https://github.com/DNXLabs/docker-musketeers/actions/workflows/registry.yml/badge.svg)](https://github.com/DNXLabs/docker-musketeers/actions/workflows/registry.yml)


🐳 Lightweight image with essential tools for a [3 Musketeers]() project.

## Tools

### Docker & docker-compose

What would be a musketeers image without Docker and Compose? This image is based on [Docker image](https://hub.docker.com/r/_/docker/) and has docker-compose installed. This allows you to access Docker in Docker (DinD).

### make

The [3 Musketeers]() pattern suggests a `make target` to call a `make _target` using Compose. However, `make` would often be in big images like [Golang stretch](https://hub.docker.com/_/golang/) and not in small ones like [Alpine](https://hub.docker.com/_/alpine/). Not every project needs big images.

### zip

Another suggested pattern is to zip your dependencies. Even big images like [Golang stretch](https://hub.docker.com/_/golang/) does not include zip. It does include `tar` which you can use but sometimes a zip file is required like when deploying your Lambda function to AWS.

### Other handy tools

- curl
- git
- openssl
- bash
- envsubst
- python3
- pip3

## Usage

```bash
# pull image
$ docker pull dnxsolutions/musketeers
# run image
$ docker run --rm dnxsolutions/musketeers docker --version
```

## Development

```bash
# build image
make build

# test image
make test

# lint image
make lint

# go inside a musketeers container
make shell
```

## Author

Managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/docker-musketeers/blob/master/LICENSE) for full details.
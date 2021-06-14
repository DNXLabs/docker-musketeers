# docker-musketeers

🐳 Lightweight image with essential tools for a [3 Musketeers][] project.

## Tools

- Docker: useful when doing Docker in Docker (DinD).
- docker-compose
- make
- zip
- curl
- git
- openssl
- bash
- envsubst

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
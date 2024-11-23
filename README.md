# `mockallan-docker` - Containerized Lightweight HTTP Server Mock

Docker image to run `mockallan`.

`mockallan` is a lightweight HTTP server mock used as a replacement for a production HTTP server in testing environments.

## Getting Started

Clone this repository.

### Using `docker-compose`

Build `mockallan` docker image.

```bash
docker-compose build
```

Running `mockallan` docker container.

```bash
docker-compose up
```

### Using `docker`

Build `mockallan` docker image.

```bash
docker build -t mockallan:latest .
```

Running `mockallan` docker container using the default port.

```bash
docker run -p 8080:8080 mockallan
```

Running `mockallan` docker container using a custom port.

```bash
docker run -e MOCKALLAN_PORT=9090 -p 9090:9090 mockallan
```

Running `mockallan` docker container providing a configuration file.

```bash
docker run -v /local/path/stub_config.json:/app/stub_config.json mockallan

```

## Related Projects

- [mockallan](https://github.com/david-domz/mockallan) - lightweight HTTP server mock.
- [mockallan-python-client](https://github.com/david-domz/mockallan-python-client) - Mockallan python client class.

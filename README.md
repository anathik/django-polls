<p align="center">
  <a href="https://docs.djangoproject.com/en/2.2/intro/reusable-apps/">
    <img src="https://icon-library.net//images/django-icon/django-icon-0.jpg" width="150" />
  </a>
</p>

[![docker-compose](https://img.shields.io/badge/dockercompose-%5E1.24.01-blue.svg)](https://docs.docker.com/compose)
[![docker](https://img.shields.io/badge/docker-%5E19.03.02-blue.svg)](https://www.docker.com/)

The point of this project is to build upon Djangos tutorial project with my own preferential practices and additional tooling for a better development. It will serve as a reliable model for similar projects in the future.

### Getting Started

First build necessary containers and dependencies:

```sh
$ make build
```

Before starting the application make sure that the database is migrated:

```sh
$ make migrate
```

Lastly, startup the server with docker compose:

```sh
$ docker-compose up
```

You can test functionality with the following routes:
- http://localhost:8080/admin
- http://localhost:8080/polls

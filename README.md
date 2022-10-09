# SzB e-health backend

Made using FastAPI + SQLAlchemy

# Configuration

Create a `.env` file:

```sh
DATABASE__URL = "postgresql://postgres:password@localhost/ehealth"
```

# Usage

To start the server run

```sh
uvicorn src.main.main:app
```

# Docker Compose

To start the app in a containerized environment run:

```sh
docker compose up
```

To close it, open a new terminal and run:

```
docker compose down
```

# GitHub workflow

A workflow in this repository builds the Docker image of the API and pushes it to a [DockerHub repository](https://hub.docker.com/repository/docker/kklassa/szb-api).

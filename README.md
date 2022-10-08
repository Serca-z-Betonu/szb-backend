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

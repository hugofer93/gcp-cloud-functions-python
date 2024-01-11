# gcp-cloud-functions-python

This is a utility to replicate the Cloud Functions production environment on development with Python and Docker.


## Docker Images

This directory contains additional information about the published artifacts of [the gcp-cloud-functions-python image](https://hub.docker.com/r/hugofer93/gcp-cloud-functions-python)


## Supported tags and respective Dockerfile links

The tag name corresponds to the version of [Cloud Functions Python Runtime](https://cloud.google.com/functions/docs/concepts/python-runtime#execution_environment).

- [3.12 -> Python 3.12](Dockerfile.Python312)
- [3.11 -> Python 3.11](Dockerfile.Python311)
- [3.10 -> Python 3.10](Dockerfile.Python310)
- [3.9 -> Python 3.9](Dockerfile.Python39)
- [3.8 -> Python 3.8](Dockerfile.Python38)
- [3.7 -> Python 3.7](Dockerfile.Python37)


## Setup

* [Install GCloud CLI / SDK](https://cloud.google.com/sdk/docs/install)

* Generate GCloud Credentials JSON:

  ```Bash
  gcloud auth application-default login
  ```

  NOTE: This generates `application_default_credentials.json` file that will be used to run in development environment.


## Usage

#### `pyproject.toml` Python script dependencies file.

* NOTE: This file is required.

```Toml
[tool.poetry]
name = "myproject"
version = "0.1.0"
description = "Your project description."
authors = ["Your Name <you@example.com>"]
readme = "README.md"

[tool.poetry.dependencies]
python = "~3.10"
python-dotenv = "~1.0"

[tool.poetry.group.dev.dependencies]
functions-framework = "~3.5"

[build-system]
requires = ["poetry-core"]
build-backend = "poetry.core.masonry.api"
```

#### `main.py` This your script.

* NOTE: This file is required.

```Python
from json import dumps as json_dumps
from os import environ as os_environ

from dotenv import load_dotenv
from functions_framework import http as functions_framework_http


load_dotenv()

GCP_PROJECT_ID = os_environ.get('GCP_PROJECT_ID')

BIGQUERY_DATASET = os_environ.get('BIGQUERY_DATASET')

BIGQUERY_TABLE = os_environ.get('BIGQUERY_DATASET')


@functions_framework_http
def load_data_to_bigquery(request):
    # NOTE: HERE YOUR CODE.
    response_data = {'success': True}
    return json_dumps(response_data)
```


#### `Dockerfile` to build your image with the Python script.

```Docker
FROM hugofer93/gcp-cloud-functions-python:3.10

WORKDIR /opt/project

COPY . .
```


#### `compose.yml` to run your container with the Python script.

```Yaml
services:
  project:
    container_name: "your-container-name"
    build: .
    environment:
      - DEBUG=true
      - GOOGLE_APPLICATION_CREDENTIALS=/root/.gcloud/credentials.json
    volumes:
      - ".:/opt/project"
      - "$HOME/.config/gcloud/application_default_credentials.json:/root/.gcloud/credentials.json:ro"
    ports:
      - "8080:8080"
    command: >
      sh -c "poetry install --no-root && tail -f /dev/null"
    restart: "unless-stopped"
```


## Run Cloud Functions in Development

* NOTE: This command (example) is based on the previous samples.

```Bash
docker compose exec project poetry run functions-framework --source=main.py --target=load_data_to_bigquery
```

* NOTE: Poetry can generate the `requirements.txt` dependencies file.

```Bash
docker compose exec project poetry export --without-hashes -f requirements.txt --output requirements.txt 
```

## See more

- [Cloud Functions Python Runtime](https://cloud.google.com/functions/docs/concepts/python-runtime#execution_environment)
- [System Packages Included in Cloud Functions](https://cloud.google.com/functions/docs/reference/system-packages)
- [Run Cloud Functions in Development](https://cloud.google.com/functions/docs/running/function-frameworks)
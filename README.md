# gcp-cloud-functions-python

This is a utility to replicate the Cloud Functions production environment on development with Python and Docker.


## Docker Images

This directory contains additional information about the published artifacts of [the `gcp-cloud-functions-python` image](https://hub.docker.com/r/hugofer93/gcp-cloud-functions-python)


## Supported tags and respective Dockerfile links

The tag name corresponds to the version of [Cloud Functions Python Runtime](https://cloud.google.com/functions/docs/concepts/python-runtime#execution_environment).

- [3.10 -> Python 3.10](Dockerfile.Python310)
- [3.9 -> Python 3.9](Dockerfile.Python39)
- [3.8 -> Python 3.8](Dockerfile.Python38)
- [3.7 -> Python 3.7](Dockerfile.Python37)


## Usage

```Docker
FROM hugofer93/gcp-cloud-functions-python:3.9

WORKDIR /opt/project

COPY . .

RUN poetry install --no-root

CMD ["poetry", "run", "python", "your_script.py"]
```


## See more

- [Cloud Functions Python Runtime](https://cloud.google.com/functions/docs/concepts/python-runtime#execution_environment)
- [System Packages Included in Cloud Functions](https://cloud.google.com/functions/docs/reference/system-packages)
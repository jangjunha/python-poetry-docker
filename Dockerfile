ARG python_version
FROM python:${python_version}-alpine

RUN apk add --no-cache --virtual .build-deps curl libffi-dev gcc musl-dev && \
    curl -sSL https://install.python-poetry.org | python3 && \
    apk del .build-deps
ENV PATH="/root/.local/bin:${PATH}"

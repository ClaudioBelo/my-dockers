FROM python:3.10-alpine3.16

RUN apk add --no-cache curl \
    && curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - \
    && ln -s $HOME/.poetry/bin/poetry /usr/local/bin/poetry

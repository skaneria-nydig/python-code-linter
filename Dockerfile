FROM alpine:3.10

RUN apk update -y; apk upgrade -y;
RUN apk add py3-pip python3 git
RUN pip install -U pylint flake8 isort black mypy pycodestyle
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

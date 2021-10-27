FROM alpine:3.10

RUN apk add --no-cache py3-pip python3 git
RUN pip install -U pylint flake8 isort black mypy pycodestyle

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

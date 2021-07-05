FROM ubuntu:20.04

WORKDIR /app

RUN apt update -y; apt upgrade -y
RUN apt install -y git python3 python3-pip
RUN pip install -U pylint flake8 isort black mypy pycodestyle
COPY entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]

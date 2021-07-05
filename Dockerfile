FROM ubuntu:20.04

RUN apt update -y; apt upgrade -y
RUN apt install -y git python3 python3-pip
RUN pip install -U pylint flake8 isort black mypy pycodestyle
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

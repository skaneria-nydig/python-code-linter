# pyLinter

> An improved version of [python-lint](https://github.com/ricardochaves/python-lint)

## About

This action must be used for aplication the bids:

- [black](https://github.com/psf/black)
- [pylint](https://www.pylint.org/)
- [isort](https://github.com/timothycrosley/isort)
- [pycodestyle](https://pycodestyle.readthedocs.io)
- [flake8](http://flake8.pycqa.org)
- [mypy](http://mypy-lang.org/)

## Usage

Basic:

```yml
name: Linter

on: [push,pull_request]

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: KomeilParseh/pyLinter
```

Options:

```yml
name: Linter

on: [push,pull_request]

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: ricardochaves/python-lint@v1.4.0
        with:
          src: "python_alelo tests"
          use-pylint: false
          use-pycodestyle: false
          use-flake8: false
          use-black: false
          use-mypy: false
          use-isort: false
          pylint-options: ""
          pycodestyle-options: ""
          flake8-options: ""
          black-options: ""
          mypy-options: ""
          isort-options: ""
```

Command build logic list:

```bash
pylint $(pylint-options) $(src)

pycodestyle $(pycodestyle-options) $(src)

flake8 $(flake8-options) $(src)

black $(black-options) $(src)

mypy $(mypy-options) $(src)

isort $(isort-options) $(src)
```

## Contributions

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md)

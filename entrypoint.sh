#!/bin/sh

# Parameters
# $1 - src
# $2 - use-pylint
# $3 - use-pycodestyle
# $4 - use-flake8
# $5 - use-black
# $6 - use-mypy
# $7 - use-isort
# $8 - pylint-options
# $9 - pycodestyle-options
# ${10} - flake8-options
# ${11} - black-options
# ${12} - mypy-options
# ${13} - isort-options

# Git configuration
git pull # pull to avoid possible problems

git config --global user.name pyLinter[bot]
git config --global user.email <pyLinter[bot]@noreply.github.com>

if [ "$2" = true ] ; then

    echo Running: pylint $8 $1

    pylint $8 $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "Pylint ok"
    else
        echo "Pylint error"
        exit $exit_code
    fi

fi


if [ "$3" = true ] ; then

    echo Running: pycodestyle $9 $1

    pycodestyle $9 $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "pycodestyle ok"
    else
        echo "pycodestyle error"
        exit $exit_code
    fi

fi

if [ "$4" = true ] ; then

    echo Running: flake8 ${10} $1

    flake8 ${10} $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "Flake8 ok"
    else
        echo "Flake8 error"
        exit $exit_code
    fi

fi

if [ "$5" = true ] ; then

    echo Running: black ${11} $1

    black ${11} $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "Black ok"
    else
        echo "Black error"
        exit $exit_code
    fi

fi

if [ "$6" = true ] ; then

    echo Running: mypy ${12} $1

    mypy ${12} $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "mypy ok"
    else
        echo "mypy error"
        exit $exit_code
    fi

fi

if [ "$7" = true ] ; then

    echo Running: isort ${13} $1

    isort ${13} $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "isort ok"
    else
        echo "isort error"
        exit $exit_code
    fi

fi

git commit -am "Lint Done ✅"
git push origin master
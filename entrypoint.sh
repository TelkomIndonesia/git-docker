#!/bin/sh
set -e

git config --global --add safe.directory '*';
git config --global credential.helper '!f() { 
    sleep 1; 
    echo "username=${GIT_USERNAME}"; 
    echo "password=${GIT_PASSWORD}"; 
}; f'

if [ "--" == "${1:-""}"  ]; then 
    exec "$@"
fi

exec git "$@"

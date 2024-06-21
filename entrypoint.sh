#!/bin/sh
set -e

git config --global --add safe.directory '*';
git config credential.helper '!f() { 
    sleep 1; 
    echo "username=${GIT_USERNAME}"; 
    echo "password=${GIT_PASSWORD}"; 
}; f'

trap "rm -f ~/.git-credentials" EXIT
exec git $@

#!/bin/bash

# Windows alternative to 'Interactive mode is not yet supported on Windows.' on docker-compose run issue
# please see https://gist.github.com/rodrigobaron/64ea67f374b36db70542e6e3636c98b1 - Rodrigo Baron
function docker-compose-run() {
        if [ "$1" = "-f" ] || [ "$1" = "--file" ] ; then
                docker exec -i $(docker-compose -f $2 ps $3 |grep -m 1 $3 | cut -d ' ' -f1) "${@:4}"
        else
                docker exec -i $(docker-compose ps $1 | grep -m 1 $1 | cut -d ' ' -f1) "${@:2}"
        fi
}

docker-compose-run "$@"
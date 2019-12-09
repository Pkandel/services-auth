#!/bin/bash

CMD=$1
shift

case $CMD in

    dev)
        docker-compose build builder
        docker-compose up -d builder
        docker-compose logs -f
        ;;
    prod)
        docker-compose build app
        docker-compose up -d app
        docker-compose logs -f
        ;;

    stop)
        docker-compose down
        ;;

    *)
        echo usage: "dev|prod|stop"
        exit 1
        ;;
esac
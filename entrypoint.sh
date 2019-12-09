#!/bin/bash

cp -r /usr/src/cache/node_modules/. /usr/src/app/node_modules/

CMD=$1
shift

case $CMD in

    dev)
        exec npm run dev
        ;;
    prod)
        exec npm run prod
        ;;
    *)
        echo usage: "dev|prod"
        exit 1
        ;;
esac
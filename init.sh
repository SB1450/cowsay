#!/bin/bash

if [ $1 ]; then
        ex_port=$1;
else ex_port=8080
fi

if [ $2 ]; then
        in_port=$2;
else in_port=8080
fi

docker build -t cowsay:1.0 .
docker run -d -p $ex_port:$in_port -e PORT=$in_port cowsay:1.0


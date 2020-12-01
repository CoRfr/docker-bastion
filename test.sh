#!/bin/bash

docker build -t bastion .


docker run --rm --name bastion \
    -p 2222:22 \
    -e OPEN_ACCESS=true \
    bastion

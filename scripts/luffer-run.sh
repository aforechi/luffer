#!/bin/bash

IMAGE=$1
START=$2

if [ "$(pwd)" == "$HOME" ]
then
    echo "Error: Luffer cannot be run from the current user's home directory." 1>&2
    exit 1
fi

docker run -it \
    -e LUFFER_HOME \
    -e DISPLAY \
    --net=host \
    --privileged \
    --workdir="$(pwd)" \
    --volume="$LUFFER_HOME:$LUFFER_HOME" \
    --volume="$(pwd):$(pwd)" \
    --volume="/dev/bus/usb/:/dev/bus/usb" \
    "${@:3}" \
    $IMAGE \
    $START

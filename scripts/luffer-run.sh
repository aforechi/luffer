#!/bin/bash

IMAGE=$1
START=$2

# See: http://stackoverflow.com/a/37160346/476920
HEADERS_1="/usr/src/linux-headers-$(uname -r)"
HEADERS_2="/usr/src/linux-headers-$(uname -r | egrep -o '\w+\.\w+\.\w+\-\w+')"

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
    --cap-add=ALL \
    --workdir="$(pwd)" \
    --group-add dialout \
    --group-add plugdev \
    --group-add video \
    --volume="$LUFFER_HOME:$LUFFER_HOME" \
    --volume="$(pwd)":"$(pwd)" \
    --volume="/dev:/dev" \
    --volume="/lib/modules:/lib/modules" \
    --volume="/media:/media" \
    --volume="/var/run/dbus:/var/run/dbus" \
    --volume="$HEADERS_1:$HEADERS_1" \
    --volume="$HEADERS_2:$HEADERS_2" \
    "${@:3}" \
    $IMAGE \
    $START

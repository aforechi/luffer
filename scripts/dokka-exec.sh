#!/bin/bash

export EXEC_BASHRC="$DOKKA_HOME/${DOKKA_IMAGE//://}/exec.bashrc"

if [ -e "$EXEC_BASHRC" ]
then
    docker exec $DOKKA_PLUGGED bash -c "source $EXEC_BASHRC ; cd $(pwd) ; $*"
else
    docker exec $DOKKA_PLUGGED bash -c "cd $(pwd) ; $*"
fi
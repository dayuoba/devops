#!/bin/bash
IMAGE_NAME=dayuoba/devops
# global vars
COMMAND=$1
TAG_DEFAULT=alpine
BUILD_IMAGE=

alias foo=bar

start() {
    local COMMAND=$1
    # find command first
    case $COMMAND in 
        build) 
            echo "building ..."
            buildImage $2
        ;;
        push) 
            echo "pushing ..."
            pushImage $2 
        ;;
        runi)
            echo "running image ..."
            runImage $2
        ;;
        *) echo "unsupport command";;
    esac
}

runImage() {
    local IMAGE=`concatImage`
    docker run -it --rm $IMAGE
}

buildImage() {
    local IMAGE=`concatImage`
    docker build -t $IMAGE .
}

pushImage() {
    local IMAGE=`concatImage`
    docker push $IMAGE
}

concatImage() {
    local TAG=$1
    local IMAGE=
    if [ -z "$1" ]; then
        IMAGE=$IMAGE_NAME:$TAG_DEFAULT
    else
        IMAGE=$IMAGE_NAME:$1
    fi
    echo "$IMAGE"
}

## Main
start "$@"
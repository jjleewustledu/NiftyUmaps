#! /bin/bash
CONTAINER_NAME=$1
IMAGE_NAME=$2

if [[ $# -eq 0 ]] ; then
    echo 'USAGE: docker rm some-container'
    echo 'USAGE: run_container.sh some-container [some-image] [CMD]'
    echo 'N.B.:  default some-image := jjleewustledu/`basename some-container -container`-image:construct_resolved'
    exit 0
fi
if [[ $# -eq 1 ]] ; then
    IMAGE_NAME=jjleewustledu/`basename $1 -container`-image:construct_umaps
fi

CONTAINER="docker run -it --entrypoint /bin/bash --name $CONTAINER_NAME -v ${SINGULARITY_HOME}/:/SubjectsDir -v /export/:/export $IMAGE_NAME"
echo 'Starting container with commmand: '$CONTAINER
eval $CONTAINER

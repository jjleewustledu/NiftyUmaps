#! /bin/bash

docker build -t jjleewustledu/niftyumaps-image:construct_umaps -f ${DOCKER_HOME}/NiftyUmaps/Dockerfile ${DOCKER_HOME}/NiftyUmaps

#!/bin/bash

# set -e

# This entry script sets the User ID (UID) and Group ID (GID) of a user created
# in a Docker image to that passed by the host and executes arguments passed, or enters
# an interactive shell, as said user 

# Switch user user id to the one specified by HOST_UID
usermod -o -u $HOST_UID user	

# Switch user group to the one specified by HOST_GID
groupmod -o -g $HOST_GID user	

if [ $# -gt 0  ]; then
	su user -c "$@"
else
	su user -
fi
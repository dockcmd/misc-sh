#!/bin/sh
. shmod
import dockcmd/sh@v0.0.4 docker.sh

ep=${ep-java}

docker_run amazoncorretto "$@"`

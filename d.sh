#!/bin/sh
. shmod
import dockcmd/sh@v0.0.4 docker.sh

docker_run "$@" 

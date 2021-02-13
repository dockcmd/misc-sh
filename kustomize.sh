#!/bin/sh
. shmod
import dockcmd/sh@v0.0.3 docker.sh

shmod_exec `docker_std kustomize` "$@"

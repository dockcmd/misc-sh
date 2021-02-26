#!/bin/sh
. shmod
import dockcmd/sh@v0.0.4 docker.sh

t9t= docker_run hashicorp/terraform "$@"

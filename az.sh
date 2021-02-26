#!/bin/sh
. shmod
import dockcmd/sh@v0.0.4 docker.sh

e=${e-^AZURE_}
! [ $ti ] && ep=${ep-az}
t9t=

docker_run mcr.microsoft.com/azure-cli "$@"

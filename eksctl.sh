#!/bin/sh
. shmod
import dockcmd/sh@v0.0.4 docker.sh

e=${e-^AWS_}
t9t=

docker eksctl "$@"

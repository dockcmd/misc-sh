#!/bin/sh
. shmod
import dockcmd/sh@v0.0.3 docker.sh

run `e=^AWS_ hwm= docker eksctl "$@"`

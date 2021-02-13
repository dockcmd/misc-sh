#!/bin/sh
. shmod
import dockcmd/sh@v0.0.3 docker.sh

run `it=sh hwm= docker busybox "$@"`

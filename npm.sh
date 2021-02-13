#!/bin/bash
. shmod
import dockcmd/sh@v0.0.3 docker.sh

run `ep=${ep-npm} hwm= docker node "$@"`

#!/bin/bash
. shmod
import dockcmd/sh@v0.0.3 docker.sh

shmod_exec `ep=java docker_std amazoncorretto` "$@"

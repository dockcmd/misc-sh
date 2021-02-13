#!/bin/bash
. shmod
import dockcmd/sh@v0.0.3 docker.sh

shmod_exec `bash= docker_std ubuntu` "$@"
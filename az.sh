#!/bin/sh
# shellcheck disable=SC1091,SC2034,SC2154

. shmod
import github.com/dockcmd/sh@v0.0.4 docker.sh

e="${e-AZURE_|ARM_}"
! [ "$ti" ] && ep="${ep-az}"
t9t=

docker_run mcr.microsoft.com/azure-cli "$@"

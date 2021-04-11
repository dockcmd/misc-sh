#!/bin/sh
# shellcheck disable=SC1091,SC2154
. shmod
import github.com/dockcmd/sh@v0.0.5 docker.sh

e="${e-AZURE_|ARM_}"
[ "$ti" ] || ep="${ep-az}"
t9t="$t9t"

docker_run mcr.microsoft.com/azure-cli "$@"

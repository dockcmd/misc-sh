#!/bin/sh
# shellcheck disable=SC1091,SC2034,SC1007
. shmod
import github.com/dockcmd/sh@v0.0.4 docker.sh

e="${e-AZURE_|ARM_}"
! [ "$ti" ] && ep="${ep-terraform}"
t9t=

docker_run zenika/terraform-azure-cli "$@"

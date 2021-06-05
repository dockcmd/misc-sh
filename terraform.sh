#!/bin/sh
# shellcheck disable=SC1091,SC2034,SC1007
. shmod
import github.com/dockcmd/sh@v0.0.5 docker.sh

e="${e-AZURE_|ARM_}"
! [ "$ti" ] && ep="${ep-terraform}"
t9t=

# zenika/terraform-azure-cli
docker_run hashicorp/terraform:0.15.4 "$@"

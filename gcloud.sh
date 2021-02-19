#!/bin/sh
. shmod
import dockcmd/sh@v0.0.4 docker.sh

e=${e-^CLOUDSDK_}
ep=${ep-gcloud}
t9t=

docker_run gcr.io/google.com/cloudsdktool/cloud-sdk "$@"
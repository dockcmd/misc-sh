#!/bin/bash
. shmod
import dockcmd/sh@v0.0.3 docker.sh

run `e=^CLOUDSDK_ hwm= ep=gcloud docker gcr.io/google.com/cloudsdktool/cloud-sdk "$@"`
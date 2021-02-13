# Misc Docker Command Shell

Misc commands that wrap existing docker containers.

## Prerequisites

Install [shln](https://github.com/sageify/shln).

## Install

Install this source and link scripts manually.

```bash
shln install dockcmd/misc-sh

# install manually
shln ln gcloud
shln ln kustomize.sh
shln ln npm
shln ln ubuntu
```

## Configuration

Docker image tags may be specified using ~/.docker_image.

For example:

```bash
# Docker image tags
ubuntu:20.04
```
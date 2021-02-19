# Misc Docker Command Shell

Misc commands that wrap existing docker containers.

## Prerequisites

Install [shln](https://github.com/sageify/shln).

## Install

Install this source and link scripts manually.

```bash
shln install dockcmd/misc-sh

# install manually
shln ln alpine
shln ln gcloud
shln ln kustomize
shln ln npm
shln ln ubuntu
```

## Linux OS Commands

The linux OS commands, [alpine](alpine.sh), [busybox](busybox.sh) and [ubuntu](ubuntu.sh) launch the operating system and mount the working directory.

```bash
# launch alpine to shell
alpine

# see how the differnt operating systems format ls output:
ls
alpine ls -al
ubuntu ls -al

# piping works as expected
echo "Hello" | alpine rev

```

## Docker Configuration

When executing a docker command, environment variables may be used:

```bash
# dry run, show docker command
dr= alpine

# dry run long output
dr=l alpine

# run alpine with a published port
p=8080 dr= alpine

```

## Configuration

Docker image tags may be specified in the ~/.docker_image file.

For example:

```bash
# Docker image tags
ubuntu:20.04
```
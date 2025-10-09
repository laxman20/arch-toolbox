#!/bin/bash
IMAGE="ghcr.io/laxman20/arch-toolbox"
toolbox rm --force arch
podman pull "$IMAGE"
toolbox create arch -i "$IMAGE"

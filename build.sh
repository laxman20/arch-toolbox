#!/bin/bash
toolbox rm --force arch
podman build --pull=always --squash --tag arch-toolbox .
toolbox create arch -i arch-toolbox

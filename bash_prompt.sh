#!/bin/bash
set -e

cat >> ~/.bashrc << "EOF"

# Setup green prompt for users
NORMAL="\[\e[0m\]"
GREEN="\[\e[1;32m\]"
PS1="$GREEN\u [ $NORMAL\w$GREEN ]\$ $NORMAL"
EOF

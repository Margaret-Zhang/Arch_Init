#!/bin/bash
set -e

read -p "Your Git Name: " GIT_NAME
read -p "Your Git Email: " GIT_EMAIL

git config --global user.name "${GIT_NAME}"
git config --global user.email "${GIT_EMAIL}"
git config --global init.defaultBranch master

ssh-keygen -t rsa -C "${GIT_EMAIL}"
echo "-----------------------"
cat ~/.ssh/id_rsa.pub


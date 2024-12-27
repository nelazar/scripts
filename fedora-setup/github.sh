#!/usr/bin/bash

# Read variables
email=$(<../secrets/email.txt)
username=$(<../secrets/username.txt)

# Setup ssh
mkdir -p ~/.ssh
ssh-keygen -t ed25519 -C "$email" -f "/home/${username}/.ssh/id_ed25519" -N ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "Add below key to github:"
cat ~/.ssh/id_ed25519.pub

# Configure git
git config --global user.email "$email"
git config --global user.name "$username"
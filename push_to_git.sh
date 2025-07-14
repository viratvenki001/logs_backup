#!/bin/bash

# Set log directory and Git repository directory
LOG_DIR=/var/logs/app
GIT_REPO=/var/logs/app/log-repo

# Change to the Git repository directory
cd $GIT_REPO

# Add all changes
git add .

# Commit changes
git commit -m "Daily log update"

# Push changes to the remote repository
git push -u origin main

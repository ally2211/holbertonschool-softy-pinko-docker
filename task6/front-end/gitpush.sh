#!/bin/bash

# Check if commit message was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <commit-message>"
  exit 1
fi

# Assign the commit message to a variable
COMMIT_MESSAGE="$1"

# Optional: Add all changes to git, including untracked files.
# You can change this to add specific files or changes.
git add .

# Check if there are any changes to commit
if ! git diff-index --quiet HEAD --; then
  # Commit changes
  git commit -m "$COMMIT_MESSAGE"

  # Push changes to the current branch of the origin remote
  git push origin HEAD
else
  echo "No changes to commit"
fi


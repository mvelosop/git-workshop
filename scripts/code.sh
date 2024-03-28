#!/bin/bash

# Copy code from requested code folder to current directory
# Usage: ./code.sh <code-folder>
# Example: ./code.sh initial

# Check if code folder is provided
if [ -z "$1" ]; then
  echo "Please provide the code folder"
  exit 1
fi

cp -r ../../code/$1/* .



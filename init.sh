#!/bin/bash

echo "Checking browserify"

if browserify --version > /dev/null; then
  echo "browserify is already installed."
else
  echo "installing browserify"
  if node -v > /dev/null; then
    if npm -v > /dev/null; then
      echo "installing browserify - global"
      npm install -g browserify
    else
      echo "npm is not installed"
    fi
  else
    echo "node is not installed"
  fi
fi
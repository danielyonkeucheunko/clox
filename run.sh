#!/bin/bash

# Name of the binary to run (change this to match your output)
BINARY_NAME="clox"

# Path to the binary
BINARY_PATH="./build/$BINARY_NAME"

# Check if the binary exists
if [ -f "$BINARY_PATH" ]; then
  echo "Running $BINARY_NAME..."
  "$BINARY_PATH"
else
  echo "Error: Binary '$BINARY_NAME' not found in build directory."
  echo "Hint: Try running ./build.sh first to build the project."
  exit 1
fi

#!/bin/bash

# Set the build directory
BUILD_DIR="build"

# Set build type (Debug or Release)
BUILD_TYPE="Release"

# Step 1: Create build directory if it doesn't exist
if [ ! -d "$BUILD_DIR" ]; then
  mkdir "$BUILD_DIR"
fi

# Step 2: Navigate to build directory
cd "$BUILD_DIR" || exit

# Step 3: Run cmake configuration
cmake .. -DCMAKE_BUILD_TYPE=$BUILD_TYPE

# Step 4: Build the project using all available cores
cmake --build . -- -j"$(nproc)"

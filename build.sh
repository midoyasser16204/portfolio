#!/usr/bin/env bash
set -e

echo "Installing dependencies..."
dart pub get

echo "Running Jaspr build via build_runner..."
dart run build_runner build -d

echo "Build complete."
#!/usr/bin/env bash
set -e

echo "Installing Flutter (includes Dart)..."

git clone https://github.com/flutter/flutter.git --depth 1 -b stable $HOME/flutter
export PATH="$HOME/flutter/bin:$PATH"

flutter --version
dart --version

echo "Getting dependencies..."
dart pub get

echo "Building Jaspr..."
dart run build_runner build -d

echo "Build complete."
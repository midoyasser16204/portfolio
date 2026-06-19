#!/usr/bin/env bash
set -e

echo "Installing Flutter (includes Dart)..."
git clone https://github.com/flutter/flutter.git --depth 1 -b stable $HOME/flutter
export PATH="$HOME/flutter/bin:$PATH"
export PATH="$HOME/.pub-cache/bin:$PATH"

flutter --version
dart --version

echo "Getting dependencies..."
dart pub get

echo "Activating jaspr_cli..."
dart pub global activate jaspr_cli

echo "Building Jaspr (static site)..."
jaspr build

echo "Build complete."
ls -la build/jaspr || echo "WARNING: build/jaspr not found!"
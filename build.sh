#!/usr/bin/env bash
set -e

git clone https://github.com/flutter/flutter.git --depth 1 -b stable $HOME/flutter

export PATH="$HOME/flutter/bin:$PATH"

flutter --version
dart --version

dart pub get
dart run jaspr build
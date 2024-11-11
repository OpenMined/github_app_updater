#!/bin/sh

set -e

if [ ! -d .venv ]; then
  uv venv
fi

. .venv/bin/activate

echo "Running 'github_app_updater' with $(python3 --version) at '$(which python3)'"
python3 main.py

deactivate

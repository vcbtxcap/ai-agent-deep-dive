#!/usr/bin/env bash
# Idempotent Cloud Agent bootstrap for the teaching agent project.
# Ensures Poetry is available, then installs project + dev dependencies
# from the committed lock file. Safe to run repeatedly.
set -euo pipefail

export PATH="$HOME/.local/bin:$PATH"

if ! command -v poetry >/dev/null 2>&1; then
  curl -sSL https://install.python-poetry.org | python3 -
fi

poetry --version
poetry install

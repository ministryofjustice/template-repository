#!/usr/bin/env bash

set -euo pipefail

echo "Running 'uvx pre-commit install'"
uvx pre-commit install

echo "Running 'apm install --frozen'"
apm install --frozen

#!/usr/bin/env bash
set -euo pipefail
PORT="${1:-5173}"
cd "$(dirname "$0")/.."
python3 -m http.server "$PORT"

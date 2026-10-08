#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if ! command -v npm >/dev/null 2>&1; then
  echo "npm is required. Install Node.js 20+ first." >&2
  exit 1
fi

echo "[cloud-os-hub] installing workspace dependencies"
npm install

echo "[cloud-os-hub] setup complete"
echo "Next steps:"
echo "  npm run dev:api"
echo "  npm run dev:web"

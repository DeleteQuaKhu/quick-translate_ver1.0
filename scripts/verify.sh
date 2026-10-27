#!/usr/bin/env bash
set -euo pipefail

echo "== typecheck =="
pnpm typecheck

echo "== lint =="
pnpm lint

echo "== test =="
pnpm test

echo "== build =="
pnpm build

echo "== evals =="
if [ -d tests/evals ] && [ -n "$(find tests/evals -type f ! -name README.md ! -name .gitkeep -print -quit 2>/dev/null)" ]; then
  # Behavioral/LLM test harness (T2/T3). Wire a runner (e.g. `pnpm evals`)
  # once real eval tests exist under tests/evals.
  echo "evals: running"
  pnpm evals
else
  echo "evals: skipped (none present)"
fi

echo "verify: OK"

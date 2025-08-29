#!/usr/bin/env bash
set -euo pipefail
# API
( cd apps/api && uvicorn app.main:app --reload --port 8080 ) &
# WEB
( cd apps/web && pnpm dev ) &
wait

#!/usr/bin/env bash
set -eu
echo "fork_canary_executed=true"
if [ -n "${CI_BOUNDARY_CANARY:-}" ]; then
  echo "dummy_secret_present=true"
else
  echo "dummy_secret_present=false"
fi
# Event-derived SHA retest; boolean-only output.

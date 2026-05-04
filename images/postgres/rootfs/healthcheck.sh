#!/usr/bin/env sh
set -e

if pg_isready -q; then
  exit 0
fi

exit 1

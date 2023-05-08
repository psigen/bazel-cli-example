#!/bin/bash
set -euo pipefail

aws sso logout --profile YYYYYY

echo "Note: credentials may be cached for some period of time."

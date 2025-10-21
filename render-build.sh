#!/usr/bin/env bash
set -e

source helpers/variables.sh

if [ "RENDER_SERVICE_TYPE" = "web" ]; then
    python manage.py migrate --no-input
fi

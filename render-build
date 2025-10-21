#!/usr/bin/env bash
set -e

source helpers/variables.sh

pip3 install -r requirements.txt

if [ "RENDER_SERVICE_TYPE" = "web" ]; then
    python manage.py migrate --no-input
fi

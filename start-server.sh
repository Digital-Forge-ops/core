#!/bin/sh

set -e

echo "--> Running databise migrations..."
python manage.py migrate

echo "-> Starting Uvicorn server..."
uvicorn saleor.asgi:application --host 0.0.0.0 --port $PORT --log-level info

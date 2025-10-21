#!/usr/bin/env bash
set -e

source helpers/variables.sh


subcommand=$1
case $subcommand in
  server)
    gunicorn --bind :$PORT --worker-class uvicorn.workers.UvicornWorker saleor.asgi:application
    ;;
  worker)
    celery -A saleor --app=saleor.celeryconf:app worker --loglevel=info -E
    ;;
  *)
    echo "Unknown subcommand"
    ;;
esac

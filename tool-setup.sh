#!/bin/bash

TEMPLATE_PATH=settings/template.json

if [ -f $TEMPLATE_PATH ]; then
  docker-compose exec -T backend python -m setup - < $TEMPLATE_PATH
else
  echo "No template.json found. Using defaults."
  docker-compose exec -T backend python -m setup
fi

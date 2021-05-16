#!/usr/bin/bash
echo "Starting services: postgresql, rabbitmq, celery:"
service postgresql start
service rabbitmq-server start
celery -A config worker -l info

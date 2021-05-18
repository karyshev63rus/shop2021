#!/usr/bin/bash
echo "Starting services: postgresql, rabbitmq, celery:"
service postgresql start
service rabbitmq-server start
service redis-server start
celery -A config worker -l info

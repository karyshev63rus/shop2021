#!/usr/bin/bash
echo "Starting services: postgresql, rabbitmq, redis and celery:"
service postgresql start
service rabbitmq-server start
service redis-server start
celery -A config worker -l info 2> /dev/null

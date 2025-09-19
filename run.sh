#!/bin/bash

docker run -it --rm \
  --name n8n \
  --add-host host.docker.internal:host-gateway \
  -p 5678:5678 \
  -e OLLAMA_BASE_URL="http://host.docker.internal:11434" \
  -e GENERIC_TIMEZONE="Europe/Amsterdam" \
  -e TZ="Europe/Amsterdam" \
  -e N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true \
  -e N8N_RUNNERS_ENABLED=true \
  -v n8n_data:/home/node/.n8n \
  docker.n8n.io/n8nio/n8n

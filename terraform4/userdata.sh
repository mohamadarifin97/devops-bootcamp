#!/bin/bash
curl -fsSL https://get.docker.com | sh
id ssm-user &>/dev/null || useradd -m ssm-user
usermod -aG docker ssm-user

cat > /home/ubuntu/docker-compose.yml << 'EOF'
services:
  rackula:
    image: ghcr.io/rackulalives/rackula:latest
    container_name: rackula
    ports:
      - "8080:8080"
    restart: unless-stopped
EOF

cd /home/ubuntu && docker compose up -d

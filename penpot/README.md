# Penpot Offline ⚡️ Open-Source UI Design Tool

## ⁉️ How to run docker image ?

### 1. First load docker images :

- `docker load -i mailcatcher-latest.tar`

- `docker load -i penpotapp_backend-latest.tar`

- `docker load -i penpotapp_exporter-latest.tar`

- `docker load -i penpotapp_frontend-latest.tar`

- `docker load -i postgres-15.tar`

- `docker load -i redis-7.tar`

### 2. Create containers from images and start servers :

- `docker compose -p penpot -f docker-compose.yml up -d`

### 3. Open Browser for access to penpot from http://127.0.0.1:9001 or http://localhost:9001

---

#### If the following error occurs, restart the Docker Engine and check open ports and continue.

`Error response from daemon: Ports are not available: unable to list exposed ports: Get "http://unix/forwards/list": context deadline exceeded (Client.Timeout exceeded while awaiting headers)`

---

# W3Schools Offline ⚡️ Update v2022.09.06

## ⁉️ How to run docker image ?

### 1. First load docker images :

- `docker load -i w3schools-2022.tar`

### 2. Create container from image :

- `docker run -d -p 80:80 --name w3schools ja7adr/w3schools`

### 3. Open Browser for access to w3schools from http://127.0.0.1 or http://localhost

---

#### If the following error occurs, restart the Docker Engine and check open ports and continue.

`Error response from daemon: Ports are not available: unable to list exposed ports: Get "http://unix/forwards/list": context deadline exceeded (Client.Timeout exceeded while awaiting headers)`

---

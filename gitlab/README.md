# GitLab Offline ⚡️ The Most Comprehensive AI-powered DevSecOps Platform

## ⁉️ How to run docker image ?

### 1. First load docker images :

- `docker load -i gitlab-ce-latest.tar`

- `docker load -i gitlab-runner-alpine.tar` (If don't use CI/CD, don't need this.)

### 2. Set environment values :

- Edit `hostname` and `environment` in the docker-compose file.

### 3. Create containers from images and start servers :

- `docker compose -p gitlab -f docker-compose_gitlab-ce.yml up -d` (If don't use CI/CD, use this.)

or

- `docker compose -p gitlab -f docker-compose_gitlab-ce+gitlab-runner.yml up -d`

### 4. Open Browser for access to gitlab from http://127.0.0.1 or http://localhost

---

## 💡 Some Tips

#### If you do not configure gitlab_rails['initial_root_password'], the GitLab Administrator Password will be generated as a random password and can be obtained using the following command:

- `docker exec -it gitlab-gitlab-1 grep 'Password:' /etc/gitlab/initial_root_password`

- GitLab Administrator Username is `root`.

#### More available GITLAB_OMNIBUS_CONFIG options:

```
gitlab_rails['gitlab_shell_ssh_port'] = 22
nginx['redirect_http_to_https'] = true
gitlab_rails['initial_root_password'] = 'P@ssw0rd3915'
```

#### If the following error occurs, restart Docker or reboot and try again:

`Error response from daemon: Ports are not available: unable to list exposed ports: Get "http://unix/forwards/list": context deadline exceeded (Client.Timeout exceeded while awaiting headers)`

I installed Docker Desktop on my desktop and allocated 4GB of RAM, 4GB of swap, and CPU: 4 for the Docker engine.
And I got the above error and after rebooting, the GitLab container started successfully.
You also have to wait for a long time to setup gitlab services.
It then displays the container logs and restarts the container if the logs repeat for a long time and the server cannot be accessed. If do that, you can connect to the server next time and the bug will no longer occur.
Once it starts successfully, it will always start fine the next time you restart Docker.

#### GitLab Container Management:

`systemctl` and some other commands are not available, so you need to use `gitlab-ctl` and other Omnibus commands.

These are some commands for server management.

```
gitlab-ctl status
gitlab-ctl service-list
gitlab-ctl reconfigure
gitlab-ctl show-config
gitlab-ctl start [service name]
gitlab-ctl stop [service name]
gitlab-ctl restart [service name]
netstat -l
```

---

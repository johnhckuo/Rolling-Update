# Rolling-Update
Rolling update implementation with Ansible

## Project Overview

```bash
├── Dockerfile
├── README.md
├── ansible
├── ├── Makefile # playbook scripts for different host
├── ├── hosts # connection details (do not upload)
├── ├── roles
├── │   └── <server_name>
├── │       ├── files # updated files
├── │       ├── tasks # detailed task definition for the server(s)
├── │       └── vars # common variable for the server(s)
├── └── site.yml # playbook entrypoint
└── docker-compose.yml
```

Before executing playbook, be sure to update these parts in this project
1. hosts
2. roles/<server_name>/vars
3. roles/<server_name>/files
4. `env` & `server` in Makefile

## Setup

```bash
# build a local docker image containing ansible & make
docker build -f ./Dockerfile -t johnhckuo/ansible-playbook .

# spin up ansible container with the image we've just built
docker compose up

# check docker container status & id
docker ps

# ssh into docker container using its id
docker exec -it <container_id> /bin/sh

# start ansible playbook
make dev_ocr
```

## Powered by
- [Docker](https://www.docker.com/)
- [Ansible](https://www.ansible.com/)
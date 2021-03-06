# devops

This is a repo for maintaining Azure / Docker configuration and setup.

It's intended for quickly getting a dev environment setup with a number of commonly used services. 

I created the repo merely to help me remember how I set things up, feel free to use if needed.

## azure

### Services

* redis

## docker

The `docker/setup.sh` script sets up some common configuration. 

Enviroment variables are defined in `docker/common.env` - this is not committed to the repo, create one with the settings below.

```bash
SA_PASSWORD=<replace with a strong password>
MONGO_INITDB_ROOT_PASSWORD=<replace with password>
ME_CONFIG_MONGODB_ADMINPASSWORD=<replace with password>
```

### Services

* docker registry
* elastic stack
    * elastic - 3 nodes
    * elastic hq
    * kibana
    * logstash
    * filebeat
* nginx
* portainer
* rabbitmq
* redis
* sql server
    * Uses the following environment settings, specify in `common.env`
        * SA_PASSWORD
* traefik
* mongo
    * Uses the following environment settings, specify in `common.env`
        * MONGO_INITDB_ROOT_PASSWORD
        * ME_CONFIG_MONGODB_ADMINPASSWORD

## TODO

* kubernetes
* more azure
* move passwords / confidential settings to some key store
* secure all services


## Cheatsheet

# azure

## redis
Connection to azure from redis-cli:

update stunnel.conf and restart stunnel4

```bash
[redis-cli]
 client = yes
 accept = 127.0.0.1:6381
 connect = server:6380
 ```
Can then connect using:
```bash
redis-cli -p 6381 -a access_key
```

# docker

## Useful aliases
```bash
alias dcu=docker-compose up -d
alias dcd=docker-compose down
```
## Update a docker compose file
```bash
docker-compose up --force-recreate --build -d
```

## Prune unused things
```bash
docker image prune -f
docker network prune 
docker volume prune
```

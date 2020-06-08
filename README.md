# devops

This is a repo for maintaining Azure / Docker configuration and setup.

It's intended for quickly getting a dev environment setup with a number of commonly used services. 

I created the repo merely to help me remember how I set things up, feel free to use if needed.

## azure

### Services

* redis

## docker

The `docker/setup.sh` script sets up some common configuration. 

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
* traefik

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

#!/bin/sh

docker run -d --network keycloak-postgres-containers_keycloak_network -p 80:80 -p 443:443 -p 777:777 -v $PWD/traefik.yml:/etc/traefik/traefik.yml -v /var/run/docker.sock:/var/run/docker.sock traefik:v3.0

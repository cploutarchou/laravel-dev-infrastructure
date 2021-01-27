## A Skeleton instance for laravel dockerized application.
______________
# HOW TO:

## Requirements :
* Docker install instructions [link](https://docs.docker.com/engine/install/)
* docker-compose install instructions [link](https://docs.docker.com/compose/install/)
* php composer install instructions [link](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-macos)
* nodejs install instructions [link](https://nodejs.org/en/download/)

## What you  get :
1. nginx v1.19.6
1. mysql v8.0
1. php 7.4-fpm
1. redis server v6.0.10
## Steps :
1. Run --> `composer create-project laravel/laravel example-app`
1. Wait until the composer create the project.
1. Copy the contents of .env.sample content to .env file.
1. Run --> `composer update`
1. Copy the contents of example-app to root directory
1. Build docker-compose run  --> `docker-compose up -d`
1. You can access laravel application at http://localhost:8000

## Tips:
> If you want to pause your Docker Compose environment while keeping the state of all its services, run:
`docker-compose pause
`

> You can then resume your services with:
> `docker-compose unpause`

> To shut down your Docker Compose environment and remove all of its containers, networks, and volumes, run: `docker-compose down`

> If you want to recreate your Docker Compose environment ,  run: `docker-compose up  --force-recreate`

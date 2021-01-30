## A Skeleton instance for laravel dockerized application.

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
_______________
## Steps :

1. Run --> `composer create-project laravel/laravel example-app`
1. Wait until the composer create the project.
1. Copy the contents of .env.sample content to .env file.1.
1. Run --> `composer update`
1. Copy the contents of example-app to root directory
1. Run php artisan key:generate to generate new app key
1. Build docker-compose run --> `docker-compose up -d`
1. You can access laravel application at http://localhost:8000
1. If you get ERROR 500 Check for .env file if file not exists rename .env.sample to .env
1. And run php artisan key:generate to generate new app key
1. You can access laravel application at http://172.22.1.22
__________________
**Mysql Settings:**

* DB_HOST=172.22.1.25
* DB_PORT=3306
* DB_DATABASE=laravel
* DB_USERNAME=laravel
* DB_PASSWORD=laravel

**Redis Settings:**

* REDIS_HOST=172.22.1.23
* REDIS_PASSWORD=
* REDIS_PORT=6379

## Tips:

> If you want to pause your Docker Compose environment while keeping the state of all its services, run:
`docker-compose pause
`

> You can then resume your services with:
> `docker-compose unpause`

> To shut down your Docker Compose environment and remove all of its containers, networks, and volumes, run: `docker-compose down`

> If you want to recreate your Docker Compose environment , run: `docker-compose up --force-recreate`

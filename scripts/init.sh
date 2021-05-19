#!/bin/bash
docker-compose build
docker-compose up -d laravel
docker exec -it laravel_app  composer create-project laravel/laravel ./app
docker exec -it laravel_app  composer install
cp -rf .env app
docker-compose up -d
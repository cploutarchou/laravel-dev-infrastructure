docker-compose build
docker-compose up -d laravel
docker exec -it laravel  composer create-project laravel/laravel ./app
docker exec -it laravel  composer install
copy .env app
docker-compose up -d
if [ "$1" == "" ]; then
echo "###################################\n"
echo "# Author: Tiago Gomes              \n"
echo "# Usage: install.sh <project_name> \n"
echo "# Learn More: README.md            \n"
echo "###################################\n"
exit
fi

# Install Laravel
curl -L https://github.com/laravel/laravel/archive/v5.3.16.tar.gz | tar xz
mv $(pwd)/laravel-5.3.16/* $(pwd)
rm -rf laravel-5.3.16
touch .env

# Docker Composer Install
docker-compose up --build
docker run --rm -v $(pwd):/app composer/composer install
docker-compose exec app php artisan key:generate
docker-compose exec app php artisan optimize
docker-compose exec app php artisan migrate --seed
docker-compose exec app chmod -R 777 ./storage ./bootstrap
docker-compose exec app php artisan config:clear
docker-compose up --force-recreate





<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Instalation

Clone the repository
```
git clone https://github.com/tiago-gomes/docker_laravel.git .
```

Run the installation script
```
bash ./install.sh
```

Update the key in .env file and update with the generated key
```
docker-compose exec app php artisan key:generate
docker-compose exec app php artisan cache:clear
docker-compose exec app php artisan config:clear
```

## How to run after instalation
```
docker up
```

## Clean Docker Compose Install

List all images
```
docker images -a
```

Stop all containers
```
docker stop $(docker ps -a -q)
```

destroy all images
```
docker kill $(docker ps -q)
```

Remove all images
```
docker rmi $(docker images -a -q)
```

```
docker rm $(docker ps -a -q)
```

## License
GNU General Public License v2.0

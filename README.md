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
bash ./install.sh
```

Run the install script
```
bash ./install.sh
```

## How to run
```
docker up
```

## Clean Docker Compose Install

List all images
```
docker images -a
```

destroy all images
```
docker kill $(docker ps -q)
```

Remove all images
```
docker rmi $(docker images -a -q)
```

## License
GNU General Public License v2.0

# Levantar proyecto Docker para crear proyectos laravel
docker-compose up -d
# Comando para crear un proyecto laravel
1. Abre una terminal y dirigete a la carpeta de este proyecto
2. Ejecuta el comando siguiente y reemplaza la ruta del proyecto y el nombre del proyecto ../name-project-laravel 
    docker compose run --rm laravel composer create-project laravel/laravel:^12.0 ../name-project-laravel 
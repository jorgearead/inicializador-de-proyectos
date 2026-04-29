# Laravel Docker Installer

Este inicializador facilita la creación de proyectos Laravel usando Composer en un entorno Docker, permitiendo configurar nuevos proyectos sin instalar PHP o Composer localmente.

## Requisitos Previos
- Docker y Docker Compose instalados.
- Una ruta en tu sistema donde crear los proyectos (debe tener permisos de escritura).

## Instalación

### Levantar el Contenedor
Ejecuta el siguiente comando para iniciar el contenedor con PHP y Composer:
```bash
docker-compose up -d
```

## Uso

### Crear un Nuevo Proyecto Laravel
Una vez que el contenedor esté ejecutándose, crea un nuevo proyecto con:
```bash
docker compose run --rm laravel composer create-project laravel/laravel:^12.0 ../nombre-proyecto-laravel
```

Reemplaza `../nombre-proyecto-laravel` con la ruta relativa o absoluta donde deseas crear el proyecto. Por ejemplo:
- `../mi-proyecto-laravel` (crea en el directorio padre)
- `/ruta/absoluta/a/mi-proyecto` (ruta absoluta)

### Verificar la Instalación
Después de crear el proyecto, navega a la carpeta del nuevo proyecto y verifica que se haya creado correctamente:
```bash
ls -la ../nombre-proyecto-laravel
```

## Configuración Adicional
- Para configurar la base de datos, edita el archivo `.env` en tu nuevo proyecto Laravel.
- Si necesitas versiones específicas de Laravel, cambia `^12.0` por la versión deseada (ej. `^11.0`).

## Detener y Limpiar
- Detener el contenedor: `docker-compose down`
- Limpiar: `docker-compose down --volumes --rmi all`

## Notas
- Asegúrate de que la ruta de destino tenga permisos adecuados para que Composer pueda escribir archivos.
- El contenedor usa PHP 8.5-rc, compatible con Laravel 12.
- Para proyectos existentes, puedes usar `composer install` dentro del contenedor. 
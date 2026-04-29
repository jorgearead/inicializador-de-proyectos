# Angular Docker Install

Este proyecto permite crear y ejecutar proyectos de Angular dentro de un contenedor Docker.

## Comandos disponibles

### Levantar el proyecto
Ejecuta el siguiente comando para construir y levantar el contenedor:
```bash
docker-compose up -d --build
```

### Crear un nuevo proyecto de Angular
Una vez que el contenedor esté en ejecución, puedes crear un nuevo proyecto de Angular con el siguiente comando:
```bash
docker exec -it angular_factory ng new nombre-proyecto
```

### Levantar el proyecto de Angular
Para ejecutar el proyecto de Angular dentro del contenedor, utiliza el siguiente comando:
```bash
docker exec -it -w /home/node/app/nombre-proyecto angular_factory ng serve --host 0.0.0.0
```

## Configuración

### Ruta donde se crean los proyectos
Para configurar la ruta donde se crean los proyectos, asegúrate de que el volumen esté correctamente mapeado en el archivo `docker-compose.yml`:
```yaml
volumes:
      # Mapeamos la carpeta superior (www) al contenedor
      - C:\laragon_new\www:/home/node/app
```
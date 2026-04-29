# Angular Docker Install

Este inicializador permite crear y ejecutar proyectos de Angular dentro de un contenedor Docker, facilitando el desarrollo sin instalar Angular CLI en tu máquina local.

## Requisitos Previos
- Docker y Docker Compose instalados.
- Conocimientos básicos de Docker y Angular.

## Instalación y Configuración

### 1. Levantar el Contenedor
Ejecuta el siguiente comando para construir y levantar el contenedor:
```bash
docker-compose up -d --build
```

### 2. Configurar la Ruta de Proyectos
Edita el archivo `docker-compose.yml` para mapear la ruta donde deseas crear los proyectos. Por ejemplo:
```yaml
volumes:
  - C:\ruta\a\tus\proyectos:/home/node/app
```
Asegúrate de que la ruta del host exista y tengas permisos de escritura.

## Uso

### Crear un Nuevo Proyecto de Angular
Una vez que el contenedor esté ejecutándose, crea un nuevo proyecto con:
```bash
docker exec -it angular_factory ng new nombre-proyecto --routing --style=scss
```
Opciones comunes:
- `--routing`: Agrega enrutamiento al proyecto.
- `--style=scss`: Usa SCSS para estilos.
- `--skip-git`: No inicializa un repositorio Git.

### Ejecutar el Proyecto
Para servir el proyecto dentro del contenedor:
```bash
docker exec -it -w /home/node/app/nombre-proyecto angular_factory ng serve --host 0.0.0.0 --port 4200
```
El proyecto estará disponible en `http://localhost:4200`.

### Otros Comandos Útiles
- Generar componentes: `docker exec -it -w /home/node/app/nombre-proyecto angular_factory ng generate component nombre-componente`
- Instalar dependencias: `docker exec -it -w /home/node/app/nombre-proyecto angular_factory npm install`
- Ejecutar pruebas: `docker exec -it -w /home/node/app/nombre-proyecto angular_factory ng test`

## Detener y Limpiar
- Detener el contenedor: `docker-compose down`
- Limpiar imágenes y volúmenes: `docker-compose down --volumes --rmi all`

## Notas
- Los proyectos se crean en la ruta mapeada en el contenedor (`/home/node/app`).
- Asegúrate de que el puerto 4200 esté disponible en tu host.
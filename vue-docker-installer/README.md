# Vue Docker Installer

Este inicializador genera nuevos proyectos Vue.js usando Vue CLI dentro de Docker, con configuración automática para el servidor de desarrollo. Incluye un script automatizado para simplificar el proceso.

## Requisitos Previos
- Docker y Docker Compose instalados.
- Configura la variable `RUTA_PROYECTOS` en el archivo `.env` con la ruta absoluta donde deseas crear los proyectos (ej. `RUTA_PROYECTOS=C:\proyectos\vue`).

## Instalación

### Construir el Contenedor
```bash
docker compose build
```

## Uso

### Opción 1: Uso Automatizado (Recomendado)
Ejecuta el script `crear-y-preparar.bat` (en Windows) que automatiza la creación y configuración:
1. Haz doble clic en `crear-y-preparar.bat` o ejecuta `./crear-y-preparar.bat` en la terminal.
2. Ingresa el nombre del proyecto cuando se te solicite.
3. El script creará el proyecto, copiará la configuración del servidor y te dará instrucciones para iniciar.

### Opción 2: Uso Manual
Si prefieres hacerlo manualmente:

#### Crear el Proyecto
```bash
docker compose run --rm generator nombre-del-proyecto
```

#### Configurar el Servidor de Desarrollo
Copia el archivo `docker-compose.dev.yml` al directorio del nuevo proyecto y renómbralo a `docker-compose.yml`:
```bash
cp docker-compose.dev.yml ruta/a/tu/proyecto/docker-compose.yml
```

## Ejecutar el Proyecto

Una vez creado y configurado:
1. Navega a la carpeta del proyecto.
2. Ejecuta:
```bash
docker compose up
```
El proyecto estará disponible en `http://localhost:5173`.

## Personalización

### Opciones del Generador
Puedes pasar opciones adicionales al generador Vue. Por ejemplo:
```bash
docker compose run --rm generator nombre-proyecto --typescript --router --pinia
```
Opciones comunes:
- `--typescript`: Usa TypeScript.
- `--router`: Agrega Vue Router.
- `--pinia`: Agrega Pinia para estado.
- `--vitest`: Agrega Vitest para pruebas.

### Configuración del Servidor
Edita `docker-compose.dev.yml` si necesitas cambiar puertos o configuraciones.

## Detener y Limpiar
- Detener el servidor: `docker compose down` (desde la carpeta del proyecto).
- Limpiar contenedores: `docker compose down --volumes --rmi all` (desde la carpeta del inicializador).

## Notas
- Asegúrate de que la ruta en `RUTA_PROYECTOS` exista y tengas permisos.
- El servidor usa Vite por defecto (puerto 5173).
- Los proyectos se crean con la última versión de Vue CLI.
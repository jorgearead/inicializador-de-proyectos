# Usamos la versión de Node más estable a inicios de 2026
FROM node:22-alpine

# Instalamos una shell más completa y git (necesario para algunos paquetes)
RUN apk add --no-cache bash git

# Establecemos el directorio donde se creará el proyecto
WORKDIR /app

# El comando por defecto ejecutará el andamiaje oficial de Vue
# Usamos --yes para que descargue la última versión del generador sin preguntar
ENTRYPOINT ["npm", "create", "vue@latest", "--"]
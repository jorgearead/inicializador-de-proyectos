FROM node:20-alpine

# Instalamos el Angular CLI de forma global
RUN npm install -g @angular/cli

# Definimos el directorio de trabajo
WORKDIR /home/node/app

# Usuario no-root para evitar problemas de permisos en Linux/Mac
USER node

# Exponemos el puerto por defecto de Angular
EXPOSE 4200

CMD ["sh"]
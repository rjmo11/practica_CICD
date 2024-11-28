# Usar una imagen base de Node.js
FROM node:14

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias de Node.js
RUN npm install

# Copiar todo el contenido del proyecto
COPY . .

# Exponer el puerto en el que la app escuchará
EXPOSE 3000

# Comando para ejecutar la app
CMD ["npm", "start"]

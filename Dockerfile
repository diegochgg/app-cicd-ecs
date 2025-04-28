# Usa una imagen base de Node.js
FROM node:20-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia el archivo package.json y las dependencias al contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el código fuente al contenedor
COPY . .

# Expone el puerto en el que la app escucha
EXPOSE 3000

# Comando para ejecutar la app
CMD ["npm", "start"]

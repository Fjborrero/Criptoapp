# Imagen Node base
FROM --platform=linux/arm64 node:latest

# Directorio de Trabajo
WORKDIR /app

# Copiar el archivo package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias 
RUN npm install 


# Copiar el resto del código
COPY . .

# Exponer el puerto 3000 que usa la pagina Web
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "run", "dev"]


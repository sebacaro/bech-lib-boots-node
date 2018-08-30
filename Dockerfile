 FROM 172.17.200.7:5000/alpine-node-base-bech:v1.0.0

 LABEL name="bech-estilos"
 LABEL author="scaro"
 
 RUN mkdir -p /usr/src/app
 
 
 # Volvemos a la raiz
 WORKDIR /
 
 # Se crea el directorio de la aplicación
 RUN mkdir /app
 
 # Se cambio en cwd
 WORKDIR /app
 
 # Copiamos el source
 COPY . /app
 
 # Se instalan las dependencias
 RUN npm i --silent
 
 CMD ["top"]
              
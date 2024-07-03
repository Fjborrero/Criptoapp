# Cripto App

Se proporciona una guía para construir una base de datos en AWS, extraer datos de la Api de CoinMarketCap mediante una función Lambda escrita en Python, y luego desplegarla en una página web en la cual se mostrará el gráfico con la información extraída utilizando un contenedor Docker.

## Creación de la base de datos 

1. Accede al Panel de AWS Management Console

1.1. Inicia sesión en tu cuenta de AWS y accede al panel de AWS      Management Console.

2. Selecciona Mysql en la consola de AWS. 

2.1. Haz clic en el botón "Create table" para crear una nueva tabla en Mysql.


3. Ingresa el nombre de la Tabla:

Escribe un nombre para tu tabla, por ejemplo, "Criptocoin".

4. Configura la base de datos:

Permite que desde cualquier direccion ip pueda ingresar los datos a tu base de datos.


5. Revisa y Crea la Tabla.

## Obtencion de datos de la base de datos 

Para la obtencion de los datos de la base de datos se realizan tres scripts en Javascript los cuales permitiran lo siguiente: 

1. Mysql.js: La conexión a la base de datos de Mysql.

2. getvaluesbitcoin: Nos permite la filtracion de los datos dado a que se utiliza un query el cual nos muestra solo los valores del Bitcoin.

3. getvaluesethereum: Nos permite la filtracion de los datos dado a que se utiliza un query el cual nos muestra solo los valores del Ethereum.

## Visualizacion de los datos 

Ya con los datos separados se busca graficar esos valores para visializar el comportamiento de esos valores por lo que se crea un quiento script el cual permite la grafica de esos valores por medio de la libreria react-chartjs-2, pero para llamar esos datos que se obtenienen por medio de los queries, se utiliza llamada axios que nos permite la manipulacion de los datos y estos ser distribuidos de la manera optima para su correcta visualización.
## Desplegar el codigo de manera local

1. Descarga node y git en tu ordenador.

2. Clona el repositorio: 
```bash
  git clone https://link-to-project
```

3. Ve a la direccion del repositorio.

```bash
  cd my-project
```

4. Instala las dependencias.

```bash
  npm install
```
5. Inicia el servidor.

```bash
  npm run dev
```
# Usa Docker 

Dado a que se encuentra un archivo llamado Dockerfile te permitira la creacion de imagenes y contenedores en Docker por lo que se puede hacer el siguente paso a paso.

1. Descarga Docker 

2. Por medio del siguente comando crea la imagen.
```bash
  docker build -t '<nombre-de-tu-imagen>' .
```

3. Una vez ya creada la imagen puedes correr el contenedor con el siguente comando
```bash
  docker run -p 3000:3000 -p '<nombre-de-tu-imagen>' 
```

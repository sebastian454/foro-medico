# Foro Médico Multiusuario 🩺

¡Bienvenido al Foro Médico Multiusuario! Este proyecto nace de la mano de [Zafiro app](https://zafiroapp.com) con el objetivo de acercar a las personas con los profesionales en salud, gracias a todos lo colaborades que han hecho posible compartir parte de la tecnologia creada en [Zafiro app](https://zafiroapp.com) pensando en darle a los profesionales en salud mas herramientas que les permita hacer si verdadera labor, salvar vidas! Con esta aplicación de Ruby on Rails 7, los usuarios pueden hacer preguntas relacionadas con la salud de manera pública o anónima, y los médicos registrados pueden responderlas. Además, una vez que las preguntas son respondidas, se generan notificaciones para informar a los usuarios sobre cómo los profesionales en salud han respondido.


Las principales dependencias de la app web son la versión 7.0.1 de Rails y utiliza una base de datos PostgreSQL a través de la gema 'pg'. También utiliza 'sprockets-rails' como el pipeline original de activos, el servidor web 'puma' y las gemas 'importmap-rails', 'turbo-rails' y 'stimulus-rails' para funcionalidades JavaScript. La app también usa 'jbuilder' para construir fácilmente APIs JSON y 'redis' para ejecutar Action Cable en producción. Además, utiliza la gema 'cloudinary' para el almacenamiento de imágenes en la nube y 'will_paginate' para la paginación. Además, contiene gemas de desarrollo y pruebas como 'rspec' y 'capybara'.

## Correr Contenedor Docker de la App 🛠️
   Para ejecutar el foro medico no necesita instalar todas las dependencias como Ruby,Node js,Postgres entre otras simplemente instale docker y siga los siguientes pasos.

   1. Asegúrese de tener Docker y docker-compose instalado en su sistema. Puede descargarlo desde el sitio web oficial de Docker (https://www.docker.com/)

   2. Descargue el archivo "docker-compose.yml" en su sistema.

   3. Abra una terminal o línea de comandos y navegue hasta la carpeta donde se encuentra el archivo "docker-compose.yml"

   4. Ejecute el comando "docker-compose up" para construir y ejecutar los contenedores especificados en el archivo.

   5. Si desea detener los contenedores, utilice el comando "docker-compose down".

   6. Accede a la aplicación en el navegador web ingresando "http://localhost:3000"

   7. Accede a pgAdmin4 en el navegador web ingresando "http://localhost:5050"

   8. Inicia sesión con las credenciales especificadas en el archivo "docker-compose.yml" 

   9. Configura la conexión a la base de datos con las credenciales especificadas en el archivo "docker-compose.yml" en su config/databse.yml

   10. Si es primera vez que corre la aplicación asegure de seguir los pasos nombrados a continuación como first-setup una vez tenga instalado docker

## First-Setup y configuraciones de Desarrollo 🛠️

Para correr el servidor en modo desarrollo, siga estos pasos:

1. Construir el contenedor de Docker:
```bash
docker-compose build
```
2. Iniciar los servicios:
```bash
docker-compose up
```
3. En otra terminal, crear la base de datos:
```bash
docker-compose run ruby rake db:create
```
4. Aplicar migraciones:
```bash
docker-compose run ruby rake db:migrate
```
5. Instalar las gemas necesarias:
```bash
docker-compose exec ruby bundle install
```
6. Crear migraciones:
```bash
docker-compose exec ruby rails g migration
```

7. para finalizar los procesos usar
```bash
docker-compose down --remove-orphans
```

Para entrar a la consola de Ruby:
```bash
docker-compose exec ruby rails c
```

Una vez que haya completado estos pasos, puede ver el sitio visitando [http://localhost:3000]



¡Disfruta utilizando el Foro Médico Multiusuario! 📚

Dejanos tus dudas comentarios y apoyo en nuestras redes sociales.


## Enlaces de interés

- [Facebook](https://www.facebook.com/Zafiroaplicacion/)
- [Instagram](https://www.instagram.com/zafiroapp/?hl=es)
- [LinkedIn](https://www.linkedin.com/company/zafiroapp?)
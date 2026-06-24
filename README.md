# El Portafolio de Cesar

Este es mi portafolio personal donde muestro un poco de mi trabajo, las cosas que me gustan hacer y algo de informacion sobre mi. Lo arme para tener mi propia carta de presentacion como desarrollador. 

## Tecnologias que use

Para armar este proyecto utilice:
- Flutter: El framework principal para hacer toda la interfaz y construir la aplicacion.
- Dart: El lenguaje de programacion que le da vida a la logica.
- Material Design: Para los estilos base de los componentes de la interfaz, aunque luego los personalice bastante.

## Mapa del Proyecto

Asi esta organizado el codigo, separe todo en carpetas para que sea facil de encontrar y no sea un desastre:

```text
portafolio_cesar/
├── assets/
│   ├── foto.png
│   ├── quehago.png
│   └── secret.png
├── lib/
│   ├── Models/
│   │   └── CommentModel.dart
│   ├── Routes/
│   │   └── AppRoutes.dart
│   ├── Screens/
│   │   ├── Comments.dart
│   │   ├── Hobbies.dart
│   │   ├── Home.dart
│   │   ├── Secret.dart
│   │   └── WhatIDo.dart
│   ├── Themes/
│   │   └── Theme.dart
│   ├── Widgets/
│   │   ├── Footer.dart
│   │   ├── NavBar.dart
│   │   └── SideMenu.dart
│   └── main.dart
└── pubspec.yaml
```

## Logica del Proyecto

La aplicacion funciona usando un sistema de rutas que esta centralizado en la carpeta Routes. Esto ayuda a que moverse entre las pantallas sea rapido y limpio, sin encimar pantallas sin sentido. 

El archivo principal (main.dart) arranca la app y carga todas las rutas disponibles. Luego, cada pantalla que ves en la carpeta Screens esta construida usando piezas reutilizables de la carpeta Widgets. Ahi esta el Navbar (la barra de arriba), el SideMenu (el menu lateral que sale al presionar la hamburguesa) y el Footer. 

Todo el tema de colores y estilos visuales lo meti en la carpeta Themes para no estar repitiendo codigo, y la estructura de datos, como los comentarios que se muestran, la saco de la carpeta Models. 

## Como instalarlo

Si quieres descargar el proyecto y correrlo en tu computadora, solo tienes que hacer esto:

1. Descarga o clona este proyecto en tu maquina usando git.
2. Checa que tengas Flutter instalado en tu computadora (puedes verificarlo corriendo flutter doctor en tu consola).
3. Abre tu terminal, entra a la carpeta del proyecto y ejecuta el comando: 
   flutter pub get
4. Ya que descargo todo, solo corre la aplicacion en tu celular, emulador o en el navegador escribiendo: 
   flutter run

Y con eso ya tienes el portafolio jalando en tu entorno.

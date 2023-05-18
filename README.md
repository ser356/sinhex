# sinhex
[Sergio García Seco (ser356)](mailto:sergiogarciaseco@usal.es)


Synesthetic relations between given images and generated audible outputs as result (INTERACCION PERSONA ORDENADOR USAL)


## CONCEPTOS 

_**hexadecimal, sinestesia, flutter, dart, Material Design, Cupertino, Trello, interfaz, API, AI, WebDesign**_


## Introducción

sinhex (nombre original: sinhextesia, de sinestesia y hexadecimal) se presenta como una alternativa para aquellas personas que no tienen la capacidad de realizar asociaciones sinestésicas de manera natural.

La sinestesia según el diccionario de la Real Academia de la Lengua Española consiste en la unión de sensaciones procedentes de diferentes dominios sensoriales, esto es, una melodía con color, una ecuación con sonido etc.

La idea es simple, el sistema obtendrá una referencia de la imagen proporcionada y realizará una interpretación exclusiva para cada una de ellas.

El resultado será una melodía única y exclusiva para cada imagen.

## Objetivos

El objetivo principal es la creación de una aplicación móvil que permita al usuario generar melodías a partir de imágenes.


## Justificación y Búsqueda de Necesidades

Desde la perspectiva del creador siempre se ha querido facilitar la experiencia del usuario en lo referente a lo artístico-musical.

Se desea elaborar una aplicaciçon con el fin de hacer llegar la experiencia sinesética a todo el mundo.

### **Metodología Needfinding**

>Para sinhex se ha realizado una evaluación de la audiencia sin tener en cuenta el rango de edad puesto que se asume como una aplicación meramente recreacional, para todo el mundo.\

>Se proporciona un enlace al 
[formulario de evaluación](https://forms.gle/dFPVda9KauMmzQEK6).
\
A continuación se detalla el análisis de las preguntas realizadas.
#### **¿Qué instrumento musical le relaja más?**

Se ha obtenido una clara victoria del piano con un 75% de los votos, seguido del violín con un 25%.

<img src="./imgs/primera.png"   style="
display: block;
margin-left: auto;
margin-right: auto;
width: 100%;
">

#### **¿Es usted capaz de realizar asociaciones sinestésicas?**

Sorprendentemente la mayoría de la gente entrevistada sí que es capaz de realizar asociaciones sinestésicas, lo que sugirió un cambio de enfoque en la forma de aprender de los usuarios.

<img src="./imgs/segunda.png"   style="
display: block;
margin-left: auto;
margin-right: auto;
width: 85%;
">

¿Por qué no centrarse en qué asociaciones sinestésicas se realizan con menor frecuencia y así poder suplir una necesidad en todo usuario?

#### **¿Le gustaría una aplicación que realizara asociaciones sinestésicas por usted?**
En una escala del 0 (poco interesado) al 5 (muy interesado) se ha obtenido una media de 3.37, lo que indica que la audiencia está interesada en la creación de una aplicación de este tipo.
Tan solo dos personas han indicado que no les interesa.
<img src="./imgs/preguntault.png"   style="
display: block;
margin-left: auto;
margin-right: auto;
width: 80%;
">

#### **Inclusión de nuevos tipos de sinestesia**

Tras realizar la pregunta al usuario de qué tipos de sinestesia eran capaces de realizar se obtuvieron resultados variopintos.

<img src="./imgs/tercera.png" style="
display: block;
margin-left: auto;
margin-right: auto;
width: 80%;
">

Tal y como se menciona en el apartado anterior, se ha decidido incluir nuevos tipos de sinestesia para que el usuario pueda experimentar con ellos.

La audiencia no ha sido capaz de realizar asociaciones de números con colores, y ¿qué mejor que el sistema hexadecimal para ello?




### **LLuvia de ideas**

>Tras la evaluación de la audiencia se ha contrastado el interes del público entrevistado con las motivaciones del creador para la elaboración de la aplicación final.\
Se ha empleado Trello como herramienta para la lluvia de ideas y para la creación de listas to-do.

<img src="./imgs/trello.png"   style=
"
display: block;
margin-left: auto;
margin-right: auto;
width: 50%;
" >

Es importante resaltar que sinhex es la elección final tras varias ideas propuestas a lo largo del curso.

Tal y como se ha puesto de manifiesto con anterioridad, dichas ideas están íntimamente relacionadas, y a pesar de prescindir de ellas, forman parte del proceso de aprendizaje necesario para elaborar lo que finalmente es sinhex.


SETS, listas inteligentes, se presentó como propuesta inicial en el elevator pitch.
Consistía en un manejador y creador de listas para todo el mundo basado en el estado de ánimo y la popularidad sincronizado con Spotify.

Se creó un pequeño prototipo web empleando Svelte para el frontend y NodeJs para el backend. 

El creador asistió a un taller de APIs para reforzar el conocimiento sobre las mismas.

Finalmente se desechó la idea por ser poco innovadora y no tener capacidad real de competir en el mercado con el resto de rivales (existen aplicaciones que consumen la API de Spotify de forma mucho más eficiente, sistemática y que están verdaderamente asentados).





## **Diseño** 


[**Consideraciones**](#_10tnkb9ete0x) **3**

[**Links de Utilidad**](#_aklqcxdpg7i7) **4**

[**Estructura del Sistema**](#_gjj2ir7dgpvr) **5**

[SplashScreen](#_8523agwp37r1)

[LoginForm](#_q5m9m628k1nj)

[Settings](#_yrqzjpegnc13)

[RegistroForm](#_uwmaz5v5d0vj)

[StartScreen](#_ryzgol6x8dzc)

[Pantalla Inicial, con conexión directa](#_72yj8sofmtoe)

[LoadCandidate](#_8pk3gqwqo9mq)


## Consideraciones

Se utiliza la misma estética en todo el sistema, por lo que la interfaz es uniforme.

Los saltos y animaciones elegidos para cada pantalla también han sido los mismos.

Se ha seguido el diseño Material, con uso de los ButtonBar con forma Stadium, bordes redondeados, paquetes de iconos de Google etc.

Se puede estructurar el Prototipo Digital en cuatro grupos, que en función de en sus subescenarios se dividen en otras pantallas que aportan la funcionalidad.

## Links de Utilidad

Acceso a Figma: [Figma SIN(#)](https://www.figma.com/file/4lvWH1rp3yNchfrisyp8SF/sin(%23)?type=design&node-id=0%3A1&t=vYXxXjMuf6WuhWdQ-1)

Navegación por la Interfaz: [sin# TUTORIAL](https://youtu.be/ofFsVAbTR2o)

## Estructura del Sistema

En el video de la interacción se desglosará el contenido de cada uno de los apartados.

El diagrama de flujo de las acciones que el usuario puede realizar se ha prototipado de la siguiente manera.

 

## SplashScreen ![]( )

Pantalla que aparece al iniciar la App.

En la implementación servirá para realizar

las cargas antes del inicio.

## LoginForm ![]( )

Inicio de Sesión

## Settings ![]()

ListView con acceso a múltiples funciones de

configuración.

## RegistroForm ![]()

Registro en el Sistema

##


##


##


## StartScreen ![]()

 Pantalla Inicial, con conexión directa al resto de funcionalidades.

##


## LoadCandidate ![]()

La parte de lógica de negocio de la aplicación

subyace en este apartado. Se carga el candidato

y se realiza la asociación.







![USAL](./imgs/design/image4.jpg)

<div style="page-break-after: always; visibility: hidden">

</div>

![sinhex](./imgs/design/SplashScreen.png)

<div style="page-break-after: always; visibility: hidden">

</div>

# sinhex

[Sergio García Seco (ser356)](mailto:sergiogarciaseco@usal.es)

## Abstract

Synesthetic relations between given images and generated audible outputs as result (INTERACCION PERSONA ORDENADOR USAL).

Use of Flutter and Dart for the development of a mobile application that allows the user to generate melodies from images.

## Keywords

_**API, AI, audience, Cupertino, Dart, Figma, flutter, hexadecimal, interface, Material Design, prototype, synesthesia, Trello, WebDesign**_

## CONCEPTOS

_**API, AI, audiencia,Cupertino, Dart, Figma, flutter, hexadecimal, interfaz, Material Design, prototipo, sinestesia, Trello, WebDesign**_

## Introducción

sinhex se presenta como una alternativa para aquellas personas que no tienen la capacidad de realizar asociaciones sinestésicas de manera natural.

La sinestesia según el diccionario de la Real Academia de la Lengua Española consiste en la unión de sensaciones procedentes de diferentes dominios sensoriales, esto es, una melodía con color, una ecuación con sonido etc.

Una idea simple en la que el sistema obtendrá una referencia de la imagen proporcionada y realizará una interpretación exclusiva para cada una de ellas.

El resultado será una melodía única y exclusiva para cada imagen.

## Objetivos

El objetivo principal es la creación de una aplicación móvil que permita al usuario generar melodías a partir de imágenes.

## Justificación

Desde la perspectiva del creador siempre se ha querido facilitar la experiencia del usuario en lo referente a lo artístico-musical.

A lo largo del documento se refleja la constante fijación por la música por parte del autor y el deseo de compartir dicha experiencia a través de diferentes ideas.

Tras numerosos cambios en el enfoque sinhex es la idea que se lanza como propuesta final.

<div style="page-break-after: always; visibility: hidden">

</div>

# Estado del Arte

## Busqueda de Necesidades

### **Metodología Needfinding**

Para sinhex se ha realizado una evaluación de la audiencia sin tener en cuenta el rango de edad puesto que se asume como una aplicación meramente recreacional, para todo el mundo.

Se proporciona un enlace al
[formulario de evaluación](https://forms.gle/dFPVda9KauMmzQEK6).

A continuación se detalla el análisis de las preguntas realizadas.

#### **¿Qué instrumento musical le relaja más?**

Se ha obtenido una clara victoria del piano con un 75% de los votos, seguido del violín con un 25%.

<img src="./imgs/primera.png"   style="
         display: block;
         margin-left: auto;
         margin-right: auto;
         width: 80%;
         ">

<div style="page-break-after: always; visibility: hidden">

</div>

#### **¿Es usted capaz de realizar asociaciones sinestésicas?**

Sorprendentemente la mayoría de la gente entrevistada sí que es capaz de realizar asociaciones sinestésicas, lo que sugirió un cambio de enfoque en la forma de aprender de los usuarios y en la manera en la que se entendió la necesidad de crear una aplicación 'sinestésica'.

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

<div style="page-break-after: always; visibility: hidden">

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

## Entrevistas con músicos

Se ha realizado una entrevista a un músico profesional para obtener una visión más amplia de la necesidad de la aplicación.

Andrés Vidal Martín Martín, músico profesional e informático, ha sido entrevistado para obtener una visión más amplia de la necesidad de la aplicación.

Propone el círculo de quintas mayores como base para la generación de melodías. Permite calcular de forma procedural las notas que se van a utilizar en la melodía dado un tono inicial.

## Elección del nombre

El juego de palabras entre sinestesia y hexadecimal proporciona el nombre de la aplicación.

## Aplicaciones similares y posibles competidores

#### **Synesthesia**

Synesthesia es una aplicación web que permite crear videos speech-to-text a partir de un texto introducido por el usuario.

El usuario puede elegir entre una serie de voces y de idiomas.

El resultado es un video con una animación de fondo y un texto que se va escribiendo a medida que se va escuchando.

Realmente no es una aplicación que compite con sinhex, pero sí que realiza asociaciones sinestésicas de algún modo puesto que convierte texto en audio.

<div style="page-break-after: always; visibility: hidden">

## LLuvia de ideas

Tras la evaluación de la audiencia se ha contrastado el interes del público entrevistado con las motivaciones del creador para la elaboración de la aplicación final.\
 Se ha empleado Trello como herramienta para la lluvia de ideas y para la creación de listas to-do.

<img src="./imgs/trello.png" style=
"
display: block;
margin-left: auto;
margin-right: auto;
width: 50%;
" >

Es importante resaltar que sinhex es la elección final tras varias ideas propuestas a lo largo del curso.

Tal y como se ha puesto de manifiesto con anterioridad, dichas ideas están íntimamente relacionadas, y a pesar de prescindir de ellas, forman parte del proceso de aprendizaje necesario para elaborar lo que finalmente es sinhex.

**SETS**, listas inteligentes, se presentó como propuesta inicial en el elevator pitch.
Consistía en un manejador y creador de listas para todo el mundo basado en el estado de ánimo y la popularidad sincronizado con Spotify.

Se creó un pequeño prototipo web empleando Svelte para el frontend y NodeJS para el backend.

El creador asistió a un taller de APIs para reforzar el conocimiento sobre las mismas.

Finalmente se desechó la idea por ser poco innovadora y no tener capacidad real de competir en el mercado con el resto de rivales (existen aplicaciones que consumen la API de Spotify de forma mucho más eficiente, sistemática y que están verdaderamente asentados).

A continuación se muestra un pantallazo de lo que fue el prototipo web.

<img src="./imgs/sets/sets.png" style="
display: block;
margin-left: auto;
margin-right: auto;
width: 40%;"/>

Y un enlace a un [repositorio](https://github.com/ser356/sets) con el código fuente.

<div style="page-break-after: always; visibility: hidden">

## Diseño de la Interfaz de Usuario

Se comenzó con un pequeño [Wireframe](https://wireframe.cc/eTcUOJ) de la aplicación que abarcaba lo que sería la StartScreen, la pantalla del candidato y los formularios de inicio de sesión de manera abstracta.

<img src="./imgs/wireframe.png" style="
display: block;
margin-left: auto;
margin-right: auto;
width: 25%;"/>

Detalle de la interfaz del usuario así como evaluaciones heurísticas y de usabilidad por parte de 3 usuarios anónimos antes de la implementación.

[**Consideraciones**](#consideraciones-estéticas)

[**Links de Utilidad**](#links-de-utilidad)

[**Estructura del Sistema**](#estructura-del-sistema)

- [SplashScreen](#splashscreen)

- [LoginForm](#loginform)

- [Settings](#settings)

- [RegistroForm](#registroform)

- [StartScreen](#startscreen)

- [LoadCandidate](#loadcandidate)

## Consideraciones Estéticas

Se ha empleado Figma para la creación de la interfaz de usuario.

Se utiliza la misma estética en todo el sistema, con el fin de que el usuario no se pierda en la navegación.

Los saltos y animaciones elegidos para cada pantalla también han sido los mismos.

Se ha seguido el diseño Material, empleado por Google, para la creación de la interfaz.

Se puede estructurar el Prototipo Digital en cuatro grupos, que en función de en sus subescenarios se dividen en otras pantallas que aportan la funcionalidad.

<div style="page-break-after: always; visibility: hidden">

</div>

## Estructura del Sistema

El diagrama de flujo de las acciones que el usuario puede realizar de manera global se ha prototipado de la siguiente manera.

Mas adelante se elaboran escenarios de uso ficticios en los que se realizan ciertos flujos de acciones.

<img src="./imgs/design/image12.png" style="
display: block;
margin-left: auto;
margin-right: auto;
width: 100%;
">

<div style="page-break-after: always; visibility: hidden">

</div>

## SplashScreen

<img src="./imgs/design/image10.png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 25%;
">

<p style="
text-align: top;
font-size: 20px;
font-style: italic;
color: grey;
">
Pantalla que aparece al iniciar la App.<br>
En la implementación servirá para realizar
las cargas antes del inicio
</p>

## LoginForm

<img src="./imgs/design/image11.png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 28%;
">

<p style="
text-align: top;
font-size: 20px;
font-style: italic;
color: grey;
">
Inicio de Sesión<br>
Pantallas accesibles: <a href="#registroform">RegistroForm</a>, <a href="#startscreen">StartScreen</a><br>
</p>

<div style="page-break-after: always; visibility: hidden">

## Settings

<img src="./imgs/design/image1.png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 25%;
">

<p style="
text-align: top;
font-size: 20px;
font-style: italic;
color: grey;
">
ListView con acceso a múltiples funciones de
configuración.<br>Pantallas accesibles: <a href='#accountsettings'>AccountSettings</a>, <a href="#faq">FAQ</a>, <a href="#tutorial">Tutorial</a>,
<a href="#salir">Salir</a>.
<br>
</p>

<div style="page-break-after: always; visibility: hidden">

## _Desglose de los Ajustes:_

### **AccountSettings**

<img src="./imgs/design/Account Settings.png" style="
width: 20%;
">

1. #### **Lenguaje de la App**

   Es posible modificar el lenguaje predeterminado de la aplicación.

   <img src="./imgs/design/Lang.png" style="width: 20%;">

<div style="page-break-after: always; visibility: hidden">

2. #### **Cambiar Foto de Perfil**

   Se ha implementado un selector de imágenes para la aplicación.

   <img src="./imgs/design/PFPSetting.png" style="width: 20%;">

3. #### **Cambiar Correo Electrónico**

   Permite modificar el correo electrónico asociado a la cuenta.

   <img src="./imgs/design/NewEm.png" style="width: 20%;">

<div style="page-break-after: always; visibility: hidden">

4. #### **Cambiar Contraseña**

   Permite modificar la contraseña asociada a la cuenta.

   <img src="./imgs/design/New Pwd.png" style="width: 20%;">

### **FAQ**

No es una pantalla perse, sino un enlace a GitHub con la documentación de la aplicación.

### **Tutorial**

No es una pantalla perse, sino un enlace a YouTube con un ejemplo de uso de la aplicación.

### **Salir**

Proporciona un Logout de la aplicación. Se vuelve a la pantalla de inicio de sesión.

<div style="page-break-after: always; visibility: hidden">

## RegistroForm

<img src="./imgs/design/image7.png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 25%;
">

<p style="
text-align: top;
font-size: 20px;
font-style: italic;
color: grey;
">
Registro en el Sistema<br>
Pantallas accesibles: <a href="#loginform">LoginForm</a><br>
</p>

## StartScreen

<img src="./imgs/design/image7.png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 25%;
">

<p>

Pantalla Inicial, con conexión directa al resto de funcionalidades.<br>
Pantallas accesibles: <a href="#loadcandidate">LoadCandidate</a>, <a href="#settings">Settings</a><br>

</p>

<div style="page-break-after: always; visibility: hidden">

## LoadCandidate

<img src="./imgs/design/image9.png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 20%;
">

<p style="
text-align: top;
font-size: 20px;
font-style: italic;
color: grey;
">
La parte de lógica de negocio de la aplicación
subyace en este apartado.<br>Se carga el candidato
y se realiza la asociación.<br>
Pantallas accesibles: <a href="#startscreen">StartScreen</a><br>
</p>

<div style="page-break-after: always; visibility: hidden">

</div>

## **Escenarios de uso**

Se definen los siguientes escenarios de uso teniendo en cuenta las conexiones entre pantallas.

Una vez se ha realizado el registro en el sistema, el usuario puede acceder a la aplicación.

El acceso queda reservado a usuarios registrados.

### **Escenario 1**

Cambio de contraseña.

![pwd](./vid/pwd.gif)

<div style="page-break-after: always; visibility: hidden">

### **Escenario 2**

Cambio de correo electrónico.

![pwd](./vid/email.gif)

### **Escenario 3**

Cambio de idioma.

![pwd](./vid/lang.gif)

<div style="page-break-after: always; visibility: hidden">

### **Escenario 4**

Cambio de foto de perfil.

![pwd](./vid/pfp.gif)

### **Escenario 5**

Salir de la aplicación.

<div style="page-break-after: always; visibility: hidden">

### **Escenario 6**

Carga de candidato.

![pwd](./vid/candidato.gif)

### _NOTA_ : La versión final del prototipo modifica ciertas características en las ventanas de cambio de contraseña y email con respecto a entregas anteriores puesto que ciertas opciones de navegación contenian errores (en esta versión corregida se navega respectivamente al inicio de sesión y a la misma pantalla).

<div style="page-break-after: always; visibility: hidden">

## **Error Handling**

Las pantallas con alta capacidad de contener error por parte del usuario incorporan botones de cancelación y de confirmación.

Si el usuario no desea realizar la acción, puede cancelarla y volver a la pantalla anterior.

Además se cuenta tanto con la documentación de la aplicación como con un tutorial de uso.

Los botones clicables de desplazamiento hacia atrás están disponibles están disponibles en tres formas distintas:

- _**Botón de desplazamiento hacia atrás en la barra de navegación.**_

   <img src="./imgs/design/atras.jpg" style="width: 15%">
   
   Disponible en todas las pantallas con SnackBar menos la inicial, permite volver a la pantalla anterior.

- _**Botón Stadium en la parte inferior de la pantalla 'Atrás'.**_

   <img src="./imgs/design/Back.png" style="width: 15%">

  Disponible en los formularios, permite volver a la pantalla anterior.

- _**Botón Stadium en la parte inferior de la pantalla (variación) 'Volver Atrás'.**_

   <img src="./imgs/design/volveratras.png" style="width: 20%">

  Disponible en la pantalla de resultado de la asociación, permite volver a la pantalla anterior.

- _**Botón Stadium en la parte inferior de la pantalla 'Recargar'.**_

   <img src="./imgs/design/Recargar.png" style="width: 20%">

  Disponible en la elección del candidato, devuelve el control al sistema operativo para que el usuario pueda elegir otra imagen.

## **Evaluación Heurística**

Se ha realizado una evaluación heurística de la interfaz de usuario por parte de 3 usuarios anónimos.

La evaluación heurística es una técnica de inspección de usabilidad que se utiliza para identificar problemas de usabilidad en la interfaz de usuario de los diseños. Se basa en una lista de principios de usabilidad (heurísticas) que se aplican a la interfaz de usuario para detectar problemas de usabilidad.

Fue acuñada por Jakob Nielsen en 1989-1990.

De acuerdo con los criterios de Nielsen, la evaluación heurística ha seguido el siguiente decálogo:

1. Visibilidad del estado del sistema:
   > El sistema debe mantener informado al usuario sobre lo que está sucediendo, a través de retroalimentación apropiada dentro de un tiempo razonable.
2. Coincidencia entre el sistema y el mundo real:
   > El sistema debe hablar el lenguaje del usuario, con palabras, frases y conceptos familiares para el usuario, en lugar de términos orientados al sistema. Sigue las convenciones del mundo real, haciendo que la información aparezca en un orden natural y lógico.
3. Control y libertad del usuario :
   > Los usuarios a menudo eligen funciones del sistema por error y necesitan una "salida de emergencia" claramente marcada para salir del estado no deseado sin tener que pasar por un diálogo extenso. Admite "deshacer" y "rehacer" (o en su defecto cancelar).
4. Consistencia y estándares:
   > Se siguen las convenciones de la plataforma.
5. Prevención de errores:
   > Inclusión de mensajes de error y confirmación de acciones.
6. Reconocimiento en lugar de recuerdo:
   > Minimizar la carga de memoria del usuario, haciendo que los objetos, acciones y opciones sean visibles. El usuario no debe tener que recordar información de una parte del diálogo a otra. Las instrucciones de uso del sistema deben ser visibles o fácilmente recuperables cuando sea apropiado.
7. Flexibilidad y eficiencia de uso:
   > Hotkeys, atajos, accesos directos, etc.
8. Estética y diseño minimalista:

   > Los diálogos no deben contener información irrelevante o rara vez necesaria. Cada unidad extra de información en un diálogo compite con las unidades relevantes de información y disminuye su visibilidad relativa. Se siguenn principios de diseño establecidos.

   <div style="page-break-after: always; visibility: hidden">

9. Ayuda a los usuarios a reconocer, diagnosticar y recuperarse de los errores:
   > Los mensajes de error deben ser expresados en lenguaje claro (sin códigos), indicar con precisión el problema y sugerir una solución constructiva.
10. Ayuda y documentación:
    > Incluye documentación de ayuda y tutoriales.

<div style="page-break-after: always; visibility: hidden">

### **Evaluación Heurística 1**

### _Usuario 1_: David Montero Hernandez DNI: 70901921M

> El flujo de uso será por tanto : Se accede al sistema y se añade una imagen y se obtiene como resultado la imagen de vuelta más un sonido.\
> El método de evaluación que voy a usar es el de Nielsen, este método consta de 10 reglas las cuales tienen como objetivo detectar errores que no se detectan con pruebas de usuarios.

_**1. Visibilidad del estado del sistema**_

> Consiste en darle al usuario información sobre las acciones que ha realizado, o de los fallos que está cometiendo.\
> Es decir la capacidad de emitir feedback al usuario.
> Después de usar durante un largo periodo de tiempo la app detecté diferente cuestiones:

<img src="./imgs/heuristica/1/image1.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

> En todo momento se conoce en qué apartado te encuentras por ejemplo cuando vas al menú de ajustes, aparece un texto en la parte superior que nos indica que efectivamente estamos en el apartado de ajustes\
> El único aspecto negativo a comentar es que cuando añades al candidato no recibes ningún mensaje que te indique que se ha guardado con éxito sino que simplemente vuelves a la pantalla anterior.

_**2. Coincidencia entre el sistema y el mundo real**_

> En este apartado evalúo si el sistema es comprensible desde el punto de vista de un usuario que lo usa por primera vez, sin tener automatismos adquiridos ni conocer en profundidad la app\
> La app ofrece mensajes claros y sin conceptos complicados , además son aspectos tangibles y fáciles de entender.\
> Como aspecto negativo recalcar que la palabra recargar no se termina de entender para qué sirve y habría que explicar algo más ese aspecto.

<div style="page-break-after: always; visibility: hidden">

_**3. Control y libertad del usuario**_

> Está regla habla sobrero ofrecerle al usuario la posibilidad de hacer lo que desee, y darle la capacidad de rehacer las opciones que haya realizado por error.
> La app ofrece un botón de “paso atrás”, para solucionar posibles configuraciones erróneas.

_**4. Consistencia y estándares**_

> Este aspecto califica si la app usa elementos fácilmente reconocibles por la mayoría de los usuarios, es decir que sepas que un botón va a realizar la acción que sea por que ya los ha visto en otras apps.\
> En este aspecto la app tiene un botón con un + que sirve par añadir, es un recurso muy bueno y que da entender la operación de adicción que posteriormente se va a ofrecer\
> Otro ejemplo de buenos estándares vuelve a ser la pantalla de ajustes, los iconos empleados para todos sus elementos son muy usados en otras aplicaciones y webs por lo tanto un usuario que no tenga experiencia en la app no tendrá problema en reconocer estos iconos.

<img src="./imgs/heuristica/1/image2.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

_**5. Prevención de errores**_

> Hay acciones que realiza el usuario que le pueden llevar a problemas en un futuro, estas situaciones tienen que ser controladas por el sistema para que no dé lugar a errores.\
> La app es consistente ante estos posibles errores, aunque no se me ocurren muchos errores posibles.\
> En un posible modelo funcional tendría que asegurar la carga de los elementos correctamnete , es decir que la imagen esté en el formato correcto por ejemplo.

<div style="page-break-after: always; visibility: hidden">

_**6. Reconocimiento en lugar de recuerdo**_

> Con el objetivo de hacer pantallas lo más limpias y estéticas posibles, en ocasiones dificultamos la experiencia del usuario con elementos crentes de affordance, por ello debemos tener esto en cuenta y procurar que la carga mental que realice el usuario sea la mínima posible.\
> La app de mi compañero tiene un apartado de proyectos y dentro de él uno de proyectos recientes ese aspecto es muy positivo pues reduce la carga cognitiva del usuario a la hora de acceder a algún proyecto que frecuente mucho pues le aparecerá en media de la pantalla y con un solo toque a la misma accedes a él.\
> Una deficiencia que le encuentro a la aplicación es que, a la hora de introducir la imagen y que se genere la música no tenemos ningun boton que nos diga directamente que pulsando en él se vaya a reproducir el sonido, como podría ser un botón con una nota musical

_**7. Flexibilidad y eficiencia de uso**_

> Si una aplicación no se adapta a diferentes tipos de usuarios está teniendo carencia es ente apartado.\
> La información que maneja la app es muy técnica en algunos aspectos, por lo tanto un usuario que desconozca de este concepto puede sentirse algo perdido, por lo tanto aportar algo de información sobre qué proceso se realiza para generar este sonido o algún ejemplo.

_**8. Estética y diseño minimalista**_

> Este apartado califica si , se añade más información de la estrictamente necesaria que recargue la visión del usuario.\
> La interfaz tiene una estética muy limpia y elimina todo elemento que no sea estrictamente necesario en su interfaz.\
> Como podemos observar en está imagen no se ve nada que no sea usable de forma muy directa.

<img src="./imgs/heuristica/1/image3.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

<div style="page-break-after: always; visibility: hidden">

_**9. Ayuda a los usuarios a reconocer, diagnosticar y recuperarse de los errores**_

> Es muy difícil prevenir todos los errores pues cuando llevas una app a los usuarios estos plantean situaciones que nunca hubieras imaginado, por lo tanto ayudar al usuario a reconocerlo y solucionarlos es muy importante.\

> Como mencioné anteriormente la funcionalidad de la aplicación está muy definida y es difícil que aparezcan errores.

_**10. Ayuda y documentación**_

> Ante posibles dudas que tenga el usuario debe existir un apartado de ayuda, para evitar llamas al soporte.\
> La aplicación cuenta con un apartado de preguntas frecuentes ubicado en el apartado de ajustes, no obstante el concepto de la aplicación el algo complejo , por lo tanto un apartado informativo en el login o en la página principal sería una opción muy a tener en cuenta.

<div style="page-break-after: always; visibility: hidden">

### **Evaluación Heurística 2**

### _Usuario 2_ Abel Hernández Lorenzo A2

_**1. Visibilidad del estado del sistema**_

> Se sabe bien en qué parte de la aplicación te encuentras en cada momento, mostrando las secciones en las que se encuentra el usuario tanto en las cabeceras de cada sección como en los iconos empleados.

<img src="./imgs/heuristica/2/image1.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

<img src="./imgs/heuristica/2/image3.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

> Además se producen correctamente cambios al pulsar sobre algún icono, menú u opción redirigiendo correctamente al usuario a la opción seleccionada.

<img src="./imgs/heuristica/2/image2.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

> → Pulsamos sobre opciones →

<img src="./imgs/heuristica/2/image5.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;"/>

<div style="page-break-after: always; visibility: hidden">

_**2. Coincidencia entre el sistema y el mundo real**_

> Indica correctamente las opciones dentro de la aplicación para que la gran mayoría de usuarios pueda navegar por esta sin problema. Además usa iconos reconocibles además del texto que complementa a dichos iconos.

<img src="./imgs/heuristica/2/image4.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

_**3. Control y libertad del usuario**_

> Se indica correctamente en casi todas las situaciones cómo volver hacia atrás y cómo moverse dentro de la aplicación.\
> Además se muestran las opciones para volver a la acción anterior o cancelar de manera adecuada:

<img src="./imgs/heuristica/2/image6.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

Problemas:
A la hora de presionar sobre algunos campos para volver hacia atrás te redirecciona continuamente a la pantalla principal. Hay acciones que sería mejor volver a la ventana anterior simplemente. Ejemplo:

En la venta de Resultado pasa:

<img src="./imgs/heuristica/2/image6.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

→ Presionas ir hacia atrás →

<img src="./imgs/heuristica/2/image8.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

Sería mejor:

<img src="./imgs/heuristica/2/image6.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

→ Presionas ir hacia atrás →

<img src="./imgs/heuristica/2/image11.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

_**4. Consistencia y estándares**_

> Se muestra en toda la aplicación una tonalidad de colores estandarizada para toda la app. Los colores más característicos de esta aplicación son:

- #26876b
- #17caf2
- #eea244
- #000000

> Lo mismo sucede para la fuente empleada y los componentes(botones, iconos) de la aplicación.

_**5. Prevención de errores**_

> Tiene adecuadamente configurado la prevención de errores en la pantalla principal para evitar que estos se den.\
> Sin embargo en las opciones de la cuenta no se muestra la prevención de errores a la hora de modificar datos críticos en la cuenta del usuario(correo, contraseña).

_**6. Reconocimiento en lugar de recuerdo**_

> Están bien representadas las distintas opciones para que el usuario vea de un vistazo las opciones y acciones disponibles y acceda a la que más se adapte a su necesidad.\
> Además viene todo bien especificado en la misma interfaz. Para evitar tener que recordar información de una ventana a otra.

_**7. Flexibilidad y eficiencia de uso**_

> Los accesos rápidos a aquellos proyectos recientes hace que se reduzca el tiempo de interacción del usuario para acceder a estos.\
> Evitando así que el usuario tenga que buscar el proyecto deseado en otros apartados.

_**8. Estética y diseño minimalista**_

> Usa debidamente iconos simples sin mucha decoración. En gran parte de la aplicación muestra únicamente lo esencial. Cuenta con una interfaz organizada.

_**9. Ayuda a los usuarios a reconocer, diagnosticar y recuperarse de los errores**_

> No muestra ninguna ventana con errores o como soluciona estos.\
> Por ejemplo se podría mostrar un ejemplo de error si un usuario intenta cambiar el correo al mismo que tenía registrado o para el caso de la contraseña igual:

<img src="./imgs/heuristica/2/image10.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

_**10. Ayuda y documentación**_

> Se muestra que existe un apartado para las preguntas frecuentes de los usuarios.\
> Aunque no se ha creado la ventana de ejemplo con varias posibles preguntas de ejemplo. Además si pulsas sobre esta opción te redirecciona al GitHub.

<img src="./imgs/heuristica/2/image12.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 25%;" />

<div style="page-break-after: always; visibility: hidden">

### **Evaluación Heurística 3**

### _Usuario 3_

_**1. Visibilidad del estado del sistema**_

> La interfaz no presenta un menú claramente visible que permita al usuario acceder a las diferentes opciones disponibles en la página principal.\
> No obstante, esta estructura se justifica por el enfoque centrado en una única página desde la cual se ejecutan todas las funciones de la aplicación.\
> Sin embargo, se sugiere mejorar la visibilidad del menú de ajustes, actualmente representado por un botón en blanco, proponiendo la inclusión de un ícono como un engranaje, que resultaría más intuitivo para indicar la opción de ajustes.

_**2. Coincidencia entre el sistema y el mundo real**_

> El sistema utiliza un lenguaje claro y actual, facilitando la comprensión por parte de los usuarios. Se destaca la posibilidad de cambiar el idioma de la aplicación, lo cual contribuye a adaptarla a las preferencias y necesidades del usuario.

_**3. Control y libertad del usuario**_

> Se garantiza que los usuarios cuenten con la capacidad de deshacer acciones erróneas o retroceder en cualquier momento, brindando así un sentido de control y libertad.\
> Se destacan los pasos de confirmación, como solicitar la contraseña actual antes de realizar un cambio, lo cual genera una sensación de seguridad.

_**4. Consistencia y estándares**_

> La aplicación mantiene un diseño consistente a lo largo de todas sus ventanas, con variaciones mínimas en la presentación de la información, pero manteniendo constantes los elementos importantes. Se observa una uniformidad en aspectos como los colores, el logo y el estilo, lo cual contribuye a la coherencia visual.

_**5. Prevención de errores**_

> La aplicación se presenta de manera sencilla y simplificada, lo que permite a los usuarios llevar a cabo las tareas de forma intuitiva, minimizando así la posibilidad de cometer errores.

_**6. Reconocimiento en lugar de recuerdo**_

> El diseño de la página es claro y ofrece instrucciones precisas, facilitando el reconocimiento de los pasos necesarios para llevar a cabo la mayoría de las acciones.

_**7. Flexibilidad y eficiencia de uso**_

> La aplicación ha sido diseñada para minimizar el número de pasos requeridos en la realización de las funciones, lo que permite una experiencia eficiente para los usuarios. Aunque su funcionalidad está limitada principalmente a la carga de imágenes, cumple esta tarea de manera elegante y efectiva.

_**8. Estética y diseño minimalista**_

> La aplicación sigue una estética minimalista, evitando sobrecargar la pantalla principal.\
> Se sugiere mejorar la utilización del espacio en la pestaña de ajustes, ya que actualmente solo utiliza la mitad del espacio disponible.\
> Esto se evidencia aún más en la pestaña de opciones de cuenta, donde las opciones ocupan solo una cuarta parte de la ventana.\
> Aumentar el tamaño de las opciones permitiría una visualización más clara y menos agobiante para los usuarios.

_**9. Ayuda a los usuarios a reconocer, diagnosticar y recuperarse de los errores**_

> No se proporciona retroalimentación o mensajes de alerta claros para indicar si una tarea se ha realizado correctamente o no. Por ejemplo, no se conoce el comportamiento de la aplicación si se intenta cargar un archivo distinto a una imagen. Se sugiere implementar mensajes o indicadores que ayuden a los usuarios a reconocer, diagnosticar y solucionar posibles errores.

_**10. Ayuda y documentación**_

> La aplicación cuenta con varios apartados en el menú de ajustes que permiten buscar información sobre cómo realizar tareas específicas. Además, se destaca la opción de acceder a un tutorial que explica el uso de la aplicación. Estas características se consideran beneficiosas, especialmente para usuarios menos familiarizados con la tecnología, quienes podrían encontrar dificultades al utilizarla.

<div style="page-break-after: always; visibility: hidden">

## **Implementación de la solución**

Una vez realizada la evaluación heurística y recibido el feedback de los usuarios, se procede a realizar una implementación de la solución.

Para ello se ha empleado el framework Flutter, que permite desarrollar aplicaciones multiplataforma, es decir, que se pueden ejecutar en Android, iOS, Windows, Mac, Linux y web.

La evolución de la aplicación se puede ver en el siguiente [repositorio](https://github.com/ser356/sinhex) de GitHub.

### **Mejoras añadidas**

En todas las evaluaciones heurísticas se hace evidente la necesidad de añadir un mensaje de error cuando no se ha añadido ninguna imagen, por lo que se ha añadido un mensaje de error en la ventana flotante.

<img src="./imgs/final/flotante.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 35%;" />

Tal y como muestra la imagen, se ha aceptado la sugerencia del usuario 2 y ahora se muestra un mensaje de error cuando no se ha añadido ninguna imagen.

<img src="./image.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 35%;" />

El código en si mismo evita que el tamaño de imagen sea demasiado grande tal y como se muestra en la siguiente imagen, lo que tambien maneja el error propuesto por el usuario 1.

<img src="./image1.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 35%;" />

Se ha añadido el objeto context en los retornos de la arrow en la AppBar para que al retornar se vuelva simplemente a la pantalla anterior y no a la pantalla principal.

<img src="./image3.png" alt="img2" style="
block: auto;
margin-left: auto;
margin-right: auto;
width: 35%;" />

Existen diferencias con respecto al diseño propuesto en el prototipo, debido a que flutter no soporta ciertas funcionalidades de manera nativa, por lo que se ha tenido que adaptar el diseño a las funcionalidades que ofrece el framework.

A continuación se muestran capturas de pantalla de la aplicación:

## SplashScreen Final

<img src="./imgs/final/%20(3).png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 25%;
">

<p style="
text-align: top;
font-size: 20px;
font-style: italic;
color: grey;
">
Pantalla que aparece al iniciar la App.<br>
En la implementación servirá para realizar
las cargas antes del inicio
</p>

## LoginForm Final

<img src="imgs/final/ (6).png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 28%;
">

<p style="
text-align: top;
font-size: 20px;
font-style: italic;
color: grey;
">
Inicio de Sesión<br>
Pantallas accesibles: <a href="#registroform-final">RegistroForm</a>, <a href="#startscreen-final">StartScreen</a><br>
</p>

<div style="page-break-after: always; visibility: hidden">

## Settings Final

<img src="./imgs/final/ (8).png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 25%;
">

<p style="
text-align: top;
font-size: 20px;
font-style: italic;
color: grey;
">
ListView con acceso a múltiples funciones de
configuración.<br>Pantallas accesibles: <a href='#accountsettings-final'>AccountSettings</a>, <a href="#faq-final">FAQ</a>, <a href="#tutorial-final">Tutorial</a>,
<a href="#salir-final">Salir</a>.
<br>
</p>

<div style="page-break-after: always; visibility: hidden">

## _Desglose de los Ajustes Final:_

### **AccountSettings Final**

<img src="./imgs/final/ (9).png" style="
width: 20%;
">

<div style="page-break-after: always; visibility: hidden">

1. #### **Cambiar Foto de Perfil Final**

   Se ha implementado un selector de imágenes para la aplicación.

   <img src="./imgs/final/ (10).png" style="width: 20%;">

2. #### **Cambiar Correo Electrónico Final**

   Permite modificar el correo electrónico asociado a la cuenta.

   <img src="./imgs/final/ (12).png" style="width: 20%;">

<div style="page-break-after: always; visibility: hidden">

3. #### **Cambiar Contraseña Final**

   Permite modificar la contraseña asociada a la cuenta.

   <img src="./imgs/final/ (2).png" style="width: 20%;">

### **FAQ**

No es una pantalla perse, sino un enlace a GitHub con la documentación de la aplicación.

### **Tutorial**

No es una pantalla perse, sino un enlace a YouTube con un ejemplo de uso de la aplicación.

### **Salir**

Proporciona un Logout de la aplicación. Se vuelve a la pantalla de inicio de sesión.

<div style="page-break-after: always; visibility: hidden">

## RegistroForm

<img src="./imgs/final/(13).png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 25%;
">

<p style="
text-align: top;
font-size: 20px;
font-style: italic;
color: grey;
">
Registro en el Sistema<br>
Pantallas accesibles: <a href="#loginform-final">LoginForm</a><br>
</p>

## StartScreen

<img src="./imgs/final/ (1).png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 25%;
">

<p>

Pantalla Inicial, con conexión directa al resto de funcionalidades.<br>
Pantallas accesibles: <a href="#loadcandidate-final">LoadCandidate</a>, <a href="#settings-final">Settings</a><br>

</p>

## LoadCandidate

<img src="./imgs/final/candidate.png" style="
elevation: 10;
margin-left: auto;
margin-right: auto;
width: 20%;
">

<p style="
text-align: top;
font-size: 20px;
font-style: italic;
color: grey;
">
La parte de lógica de negocio de la aplicación
subyace en este apartado.<br>Se carga el candidato
y se realiza la asociación.<br>
Pantallas accesibles: <a href="#startscreen-final">StartScreen</a><br>
</p>

<div style="page-break-after: always; visibility: hidden">

</div>

## **Conclusiones y posible funcionalidad futura**

**sinhex** puede llegar a convertirse en una aplicación factible empleando Teoría de Códigos.

El proceso que se realizará a futuro es el siguiente:

Se analizará la predominancia de color de cada imagen en base al brillo de la misma.

Una vez establecido el color dominante, se asociará con una tonalidad.

Aquí es donde entra la Teoría de Códigos.

Un código cíclico es aquel formado por permutaciones de cada palabra presente en el código.

A partir de ahora palabra se corresponde con una melodía.

Si se codifica la armadura de cada escala para crear una matriz generadora sistemática se obtendrá un código cíclico.

Una vez obtenido el código cíclico, se obtendrá la matriz de control paridad mediante transposición de la matriz generadora.

El programa propondrá una serie de palabras aleatorias, si dicha palabra pertenece al código, significa que la palabra es correcta.

Esto se cumple puesto que en Teoría de Códigos $c*Ht=0$ siendo c palabra del código, H matriz de control.

## **Bibliografía**

Sergio García Seco [Android Studio](https://developer.android.com/studio)

Sergio García Seco [Android Developers](https://developer.android.com/docs)

Sergio García Seco: [StackOverflow](https://stackoverflow.com/ser356)

Sergio García Seco: [GitHub](https://github.com/ser356)

Sergio García Seco: [Teoría de Códigos](https://es.wikipedia.org/wiki/Teor%C3%ADa_de_c%C3%B3digos)

Sergio García Seco: [Teoría de Códigos Cíclicos](https://es.wikipedia.org/wiki/C%C3%B3digo_c%C3%ADclico)

Sergio García Seco: [Flutter](https://flutter.dev/docs)

Sergio García Seco: [Dart](https://dart.dev/docs) **Recurso Online**

Sergio García Seco : [Figma SIN(#)](<https://www.figma.com/file/4lvWH1rp3yNchfrisyp8SF/sin(%23)?type=design&node-id=0%3A1&t=vYXxXjMuf6WuhWdQ-1>) **Recurso Online**

Sergio García Seco : [sin# TUTORIAL](https://youtu.be/ofFsVAbTR2o) **Recurso Online**

Sergio García Seco Trello: [Trello Project](https://trello.com/b/ZMaSyArU/sinhex) **Recurso Online**

Sergio García Seco Proyecto Wireframe: [Wireframe Project](https://wireframe.cc/eTcUOJ) **Recurso Online**

CREATE TABLE posts
(
  id              smallint unsigned NOT NULL auto_increment,
  title           varchar(255) NOT NULL,
  excerpt         text NOT NULL,
  content         text NOT NULL,
  category        text,
  published_on    datetime NOT NULL,

  PRIMARY KEY     (id)
);

CREATE TABLE users
(
  id              smallint unsigned NOT NULL auto_increment,
  username        varchar(15) NOT NULL,
  pass            varchar(10) NOT NULL,
  usertype        varchar(15) NOT NULL,

  PRIMARY KEY     (id)
);

CREATE TABLE categories
(
  cat_id          smallint unsigned NOT NULL auto_increment,
  cat_name        varchar(20) NOT NULL,

  PRIMARY KEY     (cat_id)
);

INSERT INTO users
( username, pass, usertype ) 
VALUES 
(
  'usuario1',
  'password1',
  'administ'
);

INSERT INTO categories
( cat_name ) 
VALUES 
(
  'herramientas'
);

INSERT INTO categories
( cat_name ) 
VALUES 
(
  'programación'
);

INSERT INTO categories
( cat_name ) 
VALUES 
(
  'comandos'
);

INSERT INTO categories
( cat_name ) 
VALUES 
(
  'sistemas operativos'
);

INSERT INTO posts
( title, excerpt, content, category, published_on )
VALUES
(
  'Lenguajes de Programación (I): Java',
  'Java es un lenguaje de programación y una plataforma informática que fue comercializada por 
  primera vez en 1995 por Sun Microsystems.',
  'Java es un lenguaje de programación y una plataforma informática que fue comercializada por 
  primera vez en 1995 por Sun Microsystems. Hay muchas aplicaciones y sitios web que no funcionarán, 
  probablemente, a menos que tengan Java instalado y cada día se crean más. Java es rápido, seguro y fiable. 
  Desde ordenadores portátiles hasta centros de datos, desde consolas para juegos hasta computadoras 
  avanzadas, desde teléfonos móviles hasta Internet, Java está en todas partes, si es ejecutado en una 
  plataforma no tiene que ser recompilado para correr en otra.
  Java es, a partir de 2012, uno de los 
  lenguajes de programación más populares en uso, particularmente para aplicaciones de cliente-servidor 
  de web, con unos diez millones de usuarios reportados.',
  'programación',
  '2020-01-26 10:15:00'
);

INSERT INTO posts
( title, excerpt, content, category, published_on )
VALUES
(
  'Lenguajes de Programación (II): C',
  'C es un lenguaje de programación de propósito general originalmente desarrollado 
  por Dennis Ritchie entre 1969 y 1972 en los Laboratorios Bell...',
  'C es un lenguaje de programación de propósito general originalmente desarrollado 
  por Dennis Ritchie entre 1969 y 1972 en los Laboratorios Bell, como evolución del 
  anterior lenguaje B, a su vez basado en BCPL. Al igual que B, es un lenguaje orientado 
  a la implementación de sistemas operativos, concretamente Unix. C es apreciado por la 
  eficiencia del código que produce y es el lenguaje de programación más popular para crear 
  softwares de sistemas y aplicaciones.',
  'programación',
  '2020-02-13 20:22:43'
);

INSERT INTO posts
( title, excerpt, content, category, published_on )
VALUES
(
  'Comandos de Linux (I): cd',
  'Para navegar por los archivos y directorios de Linux, usa el comando cd.',
  'Para navegar por los archivos y directorios de Linux, usa el comando cd. Te pedirá la ruta 
  completa o el nombre del directorio, dependiendo del directorio de trabajo actual en el que 
  te encuentres. Supongamos que estás en /home/nombredeusuario/Documentos y deseas ir a Fotos, 
  un subdirectorio de Documentos. Para hacerlo, simplemente escribe el siguiente comando: 
  cd Fotos.',
  'comandos',
  '2020-03-20 18:56:13'
);

INSERT INTO posts
( title, excerpt, content, category, published_on )
VALUES
(
  'Herramientas útiles para desarrolladores (I): Git',
  'Git es un software de control de versiones diseñado por Linus Torvalds...',
  'Git es un software de control de versiones diseñado por Linus Torvalds, pensando 
  en la eficiencia, la confiabilidad y compatibilidad del mantenimiento de versiones de 
  aplicaciones cuando estas tienen un gran número de archivos de código fuente. Su propósito 
  es llevar registro de los cambios en archivos de computadora incluyendo coordinar el 
  trabajo que varias personas realizan sobre archivos compartidos en un repositorio de código.',
  'herramientas',
  '2020-04-03 10:55:12'
);

INSERT INTO posts
( title, excerpt, content, category, published_on )
VALUES
(
  'Herramientas útiles para desarrolladores (IV): Confluence',
  'Confluence es un software utilizado para la colaboración en equipo.',
  'Confluence es un software utilizado para la colaboración en equipo. Es un lugar 
  fantástico para poner en común ideas, requisitos en los que el equipo de producto 
  está trabajando y documentación para construirlo mejor. Es genial porque es muy 
  fácil de utilizar y todos pueden contribuir.',
  'herramientas',
  '2020-05-29 15:28:59'
);

INSERT INTO posts
( title, excerpt, content, category, published_on )
VALUES
(
  'Sistemas Operativos (I): Mac OS',
  'Mac OS (del inglés Macintosh Operating System, en español Sistema Operativo de Macintosh)...',
  'Mac OS (del inglés Macintosh Operating System, en español Sistema Operativo de Macintosh) 
  es el nombre del sistema operativo creado por Apple para su línea de computadoras Macintosh, 
  también aplicado retroactivamente a las versiones anteriores a System 7.6, y que apareció 
  por primera vez en System 7.5.1. Es conocido por haber sido uno de los primeros sistemas 
  dirigidos al gran público en contar con una interfaz gráfica compuesta por la interacción 
  del mouse con ventanas, iconos y menús.',
  'sistemas operativos',
  '2020-08-30 21:15:18'
);

INSERT INTO posts
( title, excerpt, content, category, published_on )
VALUES
(
  'Comandos de Linux (II): pwd',
  'Usa el comando pwd para encontrar la ruta del directorio (carpeta) de trabajo actual 
  en el que te encuentras.',
  'Usa el comando pwd para encontrar la ruta del directorio (carpeta) de trabajo actual 
  en el que te encuentras. El comando devolverá una ruta absoluta (completa), que es básicamente 
  una ruta de todos los directorios que comienzan con una barra diagonal (/) Un ejemplo de 
  una ruta absoluta es /home/nombredeusuario.',
  'comandos',
  '2020-09-26 20:23:10'
);

INSERT INTO posts
( title, excerpt, content, category, published_on )
VALUES
(
  'Herramientas útiles para desarrolladores (II): Docker',
  'Quizás no es 100% correcto decir que Docker es una herramienta, ya que más bien 
  se trata de un contenedor...',
  'Quizás no es 100% correcto decir que Docker es una herramienta, ya que más bien 
  se trata de un contenedor, pero creemos que no podía faltar en esta lista. 
  Docker es una plataforma abierta para desarrolladores y administradores de sistemas 
  para construir, enviar y utilizar aplicaciones distribuidas. Lo que hace Docker 
  es proporcionar una plataforma de ejecución de contenedores de software que te 
  permite contener tu software en un sistema de archivos.',
  'herramientas',
  '2020-10-12 12:12:12'
);

INSERT INTO posts
( title, excerpt, content, category, published_on )
VALUES
(
  'Herramientas útiles para desarrolladores (III): Sublime Text',
  'Sublime Text es un editor de texto sofisticado para código, marcado y prosa.',
  'Sublime Text es un editor de texto sofisticado para código, marcado y prosa. 
  Hay muchos shortcuts (atajos de teclado) que permiten abrir archivos y saltar 
  entre líneas con facilidad. Puedes cambiar muchas líneas a la vez gracias a 
  la opción de selección múltiple. No tienes que navegar por los menús, solo 
  tienes que buscar lo que necesitas. También puedes cambiar de proyecto con 
  facilidad. ¡Funciona muy bien!',
  'herramientas',
  '2021-03-11 06:45:56'
);

INSERT INTO posts
( title, excerpt, content, category, published_on )
VALUES
(
  'Sistemas Operativos (II): UNIX',
  'Unix (registrado oficialmente como UNIX) es un sistema operativo portable, multitarea 
  y multiusuario...',
  'Unix (registrado oficialmente como UNIX) es un sistema operativo portable, multitarea 
  y multiusuario; desarrollado en 1969 por un grupo de empleados de los laboratorios Bell de AT&T.
  El sistema, junto con todos los derechos fueron vendidos por AT&T a Novell, Inc. Esta 
  vendió posteriormente el software a Santa Cruz Operation en 1995, y esta, a su vez, lo 
  revendió a Caldera Software en 2001, empresa que después se convirtió en el grupo SCO. 
  Sin embargo, Novell siempre argumentó que solo vendió los derechos de uso del software, 
  pero que retuvo el copyright sobre "UNIX®". En 2010, y tras una larga batalla legal, 
  esta ha pasado nuevamente a ser propiedad de Novell.',
  'sistemas operativos',
  '2021-04-10 11:10:11'
);

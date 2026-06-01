🚩 Git CTF - Taller 42 Málaga

¡Bienvenidos al Taller de Git para proyectos en grupo!
Se acabó el modo supervivencia de la Piscina. Es hora de aprender a no pisarse el código los unos a los otros.

🛠️ Instrucciones de inicio

Para empezar a jugar, sigue estos pasos:

Haz un Fork de este repositorio (botón arriba a la derecha en GitHub). Esto creará una copia exacta en tu propia cuenta.

Abre tu terminal en tu Mac de 42.

Haz un Clone de TU repositorio (el fork que acabas de crear, no el original del Sensei).

git clone <URL_DE_TU_FORK>


Entra en la carpeta del repositorio:

cd ctf-git-42


A partir de ahora, usarás la herramienta make para jugar:

Para iniciar el juego o abrir el menú interactivo:

make run


Para evaluar tu misión actual rápidamente:

make check


Para ver el mapa de tus ramas (Git Graph):

make status

📖 Guía de Comandos (Cheatsheet)

Aquí tienes un resumen de tu arsenal. Para superar los retos de este CTF tendrás que deducir qué herramienta usar en cada momento. ¡Piensa antes de teclear!

Gestión de Ramas

git branch: Muestra la lista de ramas en tu repositorio local.

git branch <nombre>: Crea una nueva rama, pero sin moverte a ella.

git checkout -b <nombre> (o git switch -c <nombre>): Crea una rama nueva y te mueve a ella de inmediato.

git checkout <nombre> (o git switch <nombre>): Viaja a una rama ya existente.

Fusión y Conflictos

git merge <rama>: Coge el historial de la <rama> indicada y lo intenta fusionar en la rama en la que estás situado actualmente.

Resolución manual de conflictos: Si Git te avisa de un conflicto durante un merge, el proceso automático se pausa.

Abre el archivo afectado en tu editor (Vim, VSCode...).

Localiza y borra las marcas de conflicto de Git (<<<<<<< HEAD, =======, >>>>>>>).

Deja el código tal y como debería quedar en su versión final y guarda el archivo.

Ejecuta git add <archivo> y git commit para sellar la fusión.

Guardado Temporal

git stash: Guarda temporalmente tus archivos modificados a medias (aquellos de los que aún no has hecho commit) en un "cajón" secreto. Deja tu entorno de trabajo completamente limpio para que puedas cambiar de rama sin perder datos.

git stash pop: Saca los archivos a medias de ese cajón y los vuelve a escupir en tu área de trabajo actual para que sigas por donde ibas.

Herramientas de Inspección

git status: Tu mejor amigo. Te chiva exactamente en qué rama estás, qué archivos están modificados y si hay algún conflicto pendiente. Úsalo constantemente.

git log --graph --oneline --all: Muestra un mapa visual del árbol de ramas y commits (recuerda que tienes el atajo make status para no tener que escribir todo esto).

¡Suerte, Git Gud, y que la Norminette os acompañe!
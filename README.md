# TNTTag
 Datapack que implementa el juego de TNTTag

- [TNTTag](#tnttag)
  * [Caracteristicas](#caracteristicas)
  * [Descargar e instalar](#descargar-e-instalar)
  * [Funcionamiento y configuración](#funcionamiento-y-configuración)
    + [Jugadores iniciales](#jugadores-iniciales)
    + [Jugadores finales](#jugadores-finales)
    + [Tiempo](#tiempo)
    + [Rondas](#rondas)
  * [Como usar el datapack](#como-usar-el-datapack)
  * [Personalización](#personalización)
    + [start.mcfunction](#startmcfunction)
    + [round.mcfunction](#roundmcfunction)
    + [preexplode.mcfunction](#preexplodemcfunction)
    + [eliminate.mcfunction](#eliminatemcfunction)
    + [final.mcfunction](#finalmcfunction)
    + [tag.mcfunction](#tagmcfunction)
    + [untag.mcfunction](#untagmcfunction)
    + [tagger.mcfunction](#taggermcfunction)
    + [notagger.mcfunction](#notaggermcfunction)
  * [Notas](#notas)

## Caracteristicas
- Totalmente configurable a tus necesidades con unos pocos comandos.
- Al ser vanilla no se necesita tener conocimientos avanzados en programación para modificarlo a tu gusto.
- Funciones listas para que lo puedas personalizar y dar tu toque único.

## Descargar e instalar
Primero necesitaremos [***descargar***](https://github.com/Julioxidop/TNTTag/releases/tag/1.0 "aquí")  el datapack, después lo descomprimimos en la carpeta **datapacks** de nuestro mundo y ejercutaremos el comando **/reload** para que esté listo para funcionar.

## Funcionamiento y configuración
Los parametros que tenemos que configurar para que el juego funcione correctamente son los siguientes.
### Jugadores iniciales
Es la cantidad de jugadores que habrá al iniciar el juego. Es necesario configurarlo correctamente para que funcione de la manera que necesites.
Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando:
```
/scoreboard players set .b _tt_initplayers JUGADORES_INICIALES
```
Donde solo cambiaremos la palabra JUGADORES_INICIALES a la cantidad de jugadores iniciales.
### Jugadores finales
Este parámetro marcará la cantidad de jugadores que queremos que queden al final de la partida.
Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando:
```
/scoreboard players set .b _tt_finalplayers JUGADORES_FINALES
```
Donde solo cambiaremos la palabra JUGADORES_FINALES a la cantidad de jugadores finales.
### Tiempo
Este es el parámetro principal el cual definirá toda la ejecución del datapack. 
Este tiempo se refiere a los **segundos** que durará la partida.
Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando.
```
/scoreboard players set .b _tt_timer TIEMPO
```
Donde solo cambiaremos la palabra TIEMPO a la **cantidad de segundos** que durará la partida.

### Rondas
Al iniciar cada ronda se eliminarán los jugadores que tengan la TNT y se seleccionará a otros para que la tengan.
Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando.
```
    /scoreboard players set .b _tt_rounds RONDAS
```
Donde solo cambiaremos la palabra RONDAS por la cantidad de rondas que queremos.

## Como usar el datapack
- Después de haber configurado todos los parámetros, para iniciar el sistema, necesitaremos ejecutar el siguiente comando:
```
/function tnttag:_start
```
- Si queremos resetear el sistema ejecutaremos:
```
/function tnttag:_restore
```
- Si por alguna razón necesitamos sacar a una persona del juego ejecutaremos:
```
/execute as JUGADOR run function tnttag:_leave
```


## Personalización
Este datapack está planeada para la personalización de eventos específicos, las funciones para ajustar estan en `p22tnt/data/tnttag/functions/modify/` aqui tenemos 9 funciones listas para 9 eventos diferentes.
### start.mcfunction
Esta función se ejecuta cuando se empieza el sistema después de usar el comando `/function tnttag:_start`
### round.mcfunction
Esta función se ejecuta al comienzo de cada ronda.
### preexplode.mcfunction
Esta función se ejecute 3 segundos antes de que las comienze una nueva ronda, y por ende las TNTs exploten.
### eliminate.mcfunction
Esta función se ejecuta sobre el jugador que tiene la TNT cuando el tiempo de la ronda llega al final.
### final.mcfunction
Esta función se ejecuta cuando el tiempo de partida se termina.
### tag.mcfunction
Esta función se ejecuta sobre un jugador en el momento en que le pasan la TNT.
### untag.mcfunction
Esta función se ejecuta sobre un jugador en el momento en que le pasa la TNT a otro jugador.
### tagger.mcfunction
Esta función se ejecuta 1 vez por segundo sobre todos los jugadores que tienen la TNT.
### notagger.mcfunction
Esta función se ejecuta 1 vez por segundo sobre todos los jugadores que no tienen la TNT.

Sientete libre de modificar las demás funciones si necesitas mayor personalización.
## Notas
- Si encuentras algun fallo, tienes alguna duda o quieres contactar conmigo, mi user de discord es: **hugme#8792**

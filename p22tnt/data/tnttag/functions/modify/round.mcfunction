#==================================================#
#          Esta funci�n se ejecuta cuando          #
#              inicia una nueva ronda              #
#==================================================#

tellraw @a ["",{"text":"¡Hay ","bold":true,"color":"red"},{"score":{"name":".totag","objective":"ttdata"},"bold":true,"color":"gold"},{"text":" tnt's en el campo!","bold":true,"color":"red"}]
bossbar set timer color white
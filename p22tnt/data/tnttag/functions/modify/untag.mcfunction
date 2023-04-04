#==================================================#
#           Esta función se ejecuta justo          #
#           cuando un jugador pasa la TNT          #
#                  a otro jugador                  #
#==================================================#

tellraw @s {"text":"Â¡No tienes la TNT!"}
effect clear @s speed
effect clear @s glowing
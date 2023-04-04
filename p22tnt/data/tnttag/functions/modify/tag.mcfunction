#==================================================#
#           Esta función se ejecuta justo          #
#       cuando a un jugador le pasan la TNT        #
#==================================================#

tellraw @s {"text":"Â¡Tienes la TNT!"}
effect give @s speed 2 1 true
effect give @s glowing 2 1 true
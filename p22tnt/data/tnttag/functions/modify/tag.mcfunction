#==================================================#
#           Esta funci�n se ejecuta justo          #
#       cuando a un jugador le pasan la TNT        #
#==================================================#

tellraw @s {"text":"¡Tienes la TNT!"}
effect give @s speed 2 1 true
effect give @s glowing 2 1 true
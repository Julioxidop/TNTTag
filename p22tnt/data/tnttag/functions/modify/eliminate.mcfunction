#==================================================#
#           Esta función se ejecuta sobre          #
#            los jugadores que tienen la           #
#       TNT al momento de que estas explotan       #
#==================================================#

summon firework_rocket ~ ~0.5 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532,8073150,4312372,14602026]}]}}}}
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 1
gamemode spectator @s
tp @s ~ ~1 ~
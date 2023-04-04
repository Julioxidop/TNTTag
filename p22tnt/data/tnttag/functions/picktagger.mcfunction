execute as @r[gamemode=!creative, gamemode=!spectator, limit=1, sort=random] run function tnttag:tag
scoreboard players remove .totag ttdata 1
execute if score .totag ttdata matches 1.. run function tnttag:picktagger
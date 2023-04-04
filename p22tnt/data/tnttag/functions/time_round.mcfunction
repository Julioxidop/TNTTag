scoreboard players remove .rounds ttdata 1
scoreboard players operation .nextround ttdata -= .timeround ttdata
scoreboard players operation .nextpreround ttdata = .nextround ttdata
scoreboard players add .nextpreround ttdata 3
execute if score .timeroundrem ttdata matches 1.. run scoreboard players remove .nextround ttdata 1
execute if score .timeroundrem ttdata matches 1.. run scoreboard players remove .timeroundrem ttdata 1
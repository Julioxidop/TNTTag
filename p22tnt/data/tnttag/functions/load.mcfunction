team add TT_tagged
team modify TT_tagged color red
team modify TT_tagged friendlyFire false

team add TT_notagged
team modify TT_notagged friendlyFire false

scoreboard objectives add _tt_timer dummy
scoreboard objectives add _tt_initplayers dummy
scoreboard objectives add _tt_finalplayers dummy
scoreboard objectives add _tt_rounds dummy

scoreboard objectives add ttsaver dummy
scoreboard objectives add ttdata dummy
scoreboard players set #enabled ttdata 1
scoreboard players set 60 ttdata 60
scoreboard players set 0 ttdata 0

say DATAPACK RELOADED

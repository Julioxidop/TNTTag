scoreboard players set .totag ttdata 0
scoreboard players set .rounds ttdata 0
scoreboard players set .eliminate ttdata 0
scoreboard players set .perround ttdata 0
scoreboard players set .perroundrem ttdata 0
scoreboard players set .holderperroundrem ttdata 0
scoreboard players set .timeround ttdata 0
scoreboard players set .timeroundrem ttdata 0
scoreboard players set .holdertimeroundrem ttdata 0
scoreboard players set .nextround ttdata 0
scoreboard players set .nextpreround ttdata 0
scoreboard players set .mins ttdata 0
scoreboard players set .secs ttdata 0
scoreboard players set .holdersecs ttdata 0

team remove TT_tagged
team add TT_tagged
team modify TT_tagged color red
team modify TT_tagged friendlyFire false

team remove TT_notagged
team add TT_notagged
team modify TT_notagged friendlyFire false

scoreboard players operation .b _tt_timer = timer ttsaver
bossbar remove timer

function tnttag:enable
say restore completed
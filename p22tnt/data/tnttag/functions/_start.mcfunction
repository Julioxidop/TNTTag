#save timer
function tnttag:save

#set round counter
scoreboard players operation .rounds ttdata = .b _tt_rounds

#players to eliminate across the game
scoreboard players operation .eliminate ttdata = .b _tt_initplayers
scoreboard players operation .eliminate ttdata -= .b _tt_finalplayers

#player to eliminate per round
scoreboard players operation .perround ttdata = .eliminate ttdata
scoreboard players operation .perround ttdata /= .b _tt_rounds
        #get reminder
scoreboard players operation .perroundrem ttdata = .eliminate ttdata
scoreboard players operation .holderperroundrem ttdata = .perround ttdata
scoreboard players operation .holderperroundrem ttdata *= .b _tt_rounds
scoreboard players operation .perroundrem ttdata -= .holderperroundrem ttdata

#get time per round
scoreboard players operation .timeround ttdata = .b _tt_timer
scoreboard players operation .timeround ttdata /= .b _tt_rounds
        #get reminder
scoreboard players operation .timeroundrem ttdata = .b _tt_timer
scoreboard players operation .holdertimeroundrem ttdata = .timeround ttdata
scoreboard players operation .holdertimeroundrem ttdata *= .b _tt_rounds
scoreboard players operation .timeroundrem ttdata -= .holdertimeroundrem ttdata

execute if score .eliminate ttdata < .b _tt_rounds run function tnttag:nostart
execute if score .eliminate ttdata >= .b _tt_rounds run function tnttag:start

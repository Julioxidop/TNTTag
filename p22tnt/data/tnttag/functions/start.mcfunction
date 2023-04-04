#set next timer
scoreboard players operation .nextround ttdata = .b _tt_timer
function tnttag:time_round

#set taggers
function tnttag:settaggers

execute as @a[team=!TT_tagged, gamemode=!spectator, gamemode=!creative] run function tnttag:untag

bossbar add timer {"score":{"name":".b","objective":"_tt_timer"},"bold":true,"color":"gold"}
bossbar set timer players @a
execute store result bossbar timer max run scoreboard players get .b _tt_timer
function tnttag:min_sec


#run timer
function tnttag:timer

function tnttag:modify/start
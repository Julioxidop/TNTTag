#preround
execute if score .nextpreround ttdata = .b _tt_timer run function tnttag:modify/preexplode

#start round
execute if score .nextround ttdata = .b _tt_timer if score .rounds ttdata matches 1.. run function tnttag:next_round

#actions
execute as @a[team=TT_tagged] at @s run function tnttag:modify/tagger
execute as @a[team=TT_notagged] at @s run function tnttag:modify/notagger

#loop
function tnttag:min_sec
execute if score .b _tt_timer matches 1.. run scoreboard players remove .b _tt_timer 1
execute if score .b _tt_timer matches 0 run function tnttag:0time
execute if score .b _tt_timer matches 1.. if score #enabled ttdata matches 1 run schedule function tnttag:timer 1s
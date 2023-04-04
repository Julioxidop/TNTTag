
#mins 1 cif and secs 1 cif
execute if score .mins ttdata matches 0..9 if score .secs ttdata matches 0..9 run bossbar set timer name ["",{"text":"0","bold":true,"color":"gold"},{"score":{"name":".mins","objective":"ttdata"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"gold"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":".secs","objective":"ttdata"},"bold":true,"color":"gold"}]

#mins 1 cif and secs +2 cif
execute if score .mins ttdata matches 0..9 if score .secs ttdata matches 10.. run bossbar set timer name ["",{"text":"0","bold":true,"color":"gold"},{"score":{"name":".mins","objective":"ttdata"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"gold"},{"score":{"name":".secs","objective":"ttdata"},"bold":true,"color":"gold"}]

#mins +2 cif and secs 1 cif
execute if score .mins ttdata matches 10.. if score .secs ttdata matches 0..9 run bossbar set timer name ["",{"score":{"name":".mins","objective":"ttdata"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"gold"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":".secs","objective":"ttdata"},"bold":true,"color":"gold"}]

#mins +2 cif and secs +2 cif
execute if score .mins ttdata matches 10.. if score .secs ttdata matches 10.. run bossbar set timer name ["",{"score":{"name":".mins","objective":"ttdata"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"gold"},{"score":{"name":".secs","objective":"ttdata"},"bold":true,"color":"gold"}]

#set value
execute store result bossbar timer value run scoreboard players get .b _tt_timer
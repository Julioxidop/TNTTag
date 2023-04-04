scoreboard players operation .totag ttdata = .perround ttdata
execute if score .perroundrem ttdata matches 1.. run scoreboard players add .totag ttdata 1
execute if score .perroundrem ttdata matches 1.. run scoreboard players remove .perroundrem ttdata 1

function tnttag:modify/round

function tnttag:picktagger
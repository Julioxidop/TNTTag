#get current minutes
scoreboard players operation .mins ttdata = .b _tt_timer
scoreboard players operation .mins ttdata /= 60 ttdata

#get current seconds
scoreboard players operation .secs ttdata = .b _tt_timer
scoreboard players operation .holdersecs ttdata = .mins ttdata
scoreboard players operation .holdersecs ttdata *= 60 ttdata
scoreboard players operation .secs ttdata -= .holdersecs ttdata

function tnttag:refresh_bb
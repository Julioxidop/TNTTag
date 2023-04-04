#==================================================#
#        Esta funci�n se ejecuta 3 segundos        #
#            antes de que las TNTs vayan           #
#                    a explotar                    #
#==================================================#

tellraw @a {"text":"¡Las TNTs están por explotar!","bold":true,"underlined":true,"color":"red"}
bossbar set timer color red
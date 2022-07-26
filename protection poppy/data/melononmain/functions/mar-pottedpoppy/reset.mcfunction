##
 # reset.mcfunction
 # mar-pottedpoppy
 #
 # Created by MelonOnMain.
##

scoreboard objectives remove potted_golem_health
scoreboard objectives add potted_golem_health health

kill @e[tag=potted_golem,type=iron_golem]
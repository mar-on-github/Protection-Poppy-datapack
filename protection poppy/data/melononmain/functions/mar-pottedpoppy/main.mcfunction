##
 # main.mcfunction
 # mar-pottedpoppy
 #
 # Created by MelonOnMain.
##
execute positioned as @a if block ~1 ~ ~ potted_poppy run summon armor_stand ~1 ~ ~ {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}
execute positioned as @a if block ~-1 ~ ~ potted_poppy run summon armor_stand ~-1 ~ ~ {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}
execute positioned as @a if block ~ ~ ~1 potted_poppy run summon armor_stand ~ ~ ~1 {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}
execute positioned as @a if block ~ ~ ~-1 potted_poppy run summon armor_stand ~ ~ ~-1 {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}

execute positioned as @a if block ~1 ~1 ~ potted_poppy run summon armor_stand ~1 ~ ~ {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}
execute positioned as @a if block ~-1 ~1 ~ potted_poppy run summon armor_stand ~-1 ~ ~ {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}
execute positioned as @a if block ~ ~1 ~1 potted_poppy run summon armor_stand ~ ~ ~1 {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}
execute positioned as @a if block ~ ~1 ~-1 potted_poppy run summon armor_stand ~ ~ ~-1 {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}

execute positioned as @a if block ~1 ~-1 ~ potted_poppy run summon armor_stand ~1 ~ ~ {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}
execute positioned as @a if block ~-1 ~-1 ~ potted_poppy run summon armor_stand ~-1 ~ ~ {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}
execute positioned as @a if block ~ ~-1 ~1 potted_poppy run summon armor_stand ~ ~ ~1 {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}
execute positioned as @a if block ~ ~-1 ~-1 potted_poppy run summon armor_stand ~ ~ ~-1 {Invisible:1,NoGravity:1,Tags:["potted_golem_as"],NoAI:true,Invulnerable:true}

execute as @e[tag=potted_golem_as,type=armor_stand] positioned as @s run tag @e[distance=..1,tag=potted_golem_as,limit=1] add potted_golem_as_one
kill @e[tag=potted_golem_as,tag=!potted_golem_as_one]
execute as @e[tag=potted_golem_as,type=armor_stand] positioned as @s unless block ~ ~ ~ potted_poppy run kill @s
tag @e remove potted_golem_as_one
#execute as @e[tag=potted_golem_as,type=armor_stand] run data merge entity @s {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}]}

execute as @e[tag=potted_golem_as,type=armor_stand] positioned as @s unless entity @e[tag=potted_golem,distance=..2] run summon minecraft:iron_golem ~ ~ ~ {PlayerCreated:1,CustomName:'[{"text":"Protection Poppy"}]',CanPickUpLoot:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:[potted_golem],DeathLootTable:"melononmain:entities/potted_golem"}
execute as @e[tag=potted_golem_as,type=armor_stand] positioned as @s if entity @e[tag=potted_golem,distance=..2] run tp @e[type=iron_golem,tag=potted_golem,sort=nearest] ~ ~1 ~
execute as @e[tag=potted_golem] positioned as @s run tag @e[distance=..1,tag=potted_golem,limit=1] add potted_golem_one
tp @e[tag=potted_golem,tag=!potted_golem_one] ~ ~-5 ~
kill @e[tag=potted_golem,tag=!potted_golem_one]
tag @e remove potted_golem_one
effect give @e[type=iron_golem,tag=potted_golem] invisibility 5 100 true
effect give @e[type=iron_golem,tag=potted_golem] slowness 5 100 true
effect give @e[type=iron_golem,tag=potted_golem] glowing 5 100 true

scoreboard players enable @e[type=iron_golem,tag=potted_golem] potted_golem_health
execute as @e[type=iron_golem,tag=potted_golem,scores={potted_golem_health=..3}] run tp @s ~ ~-5 ~
execute as @e[type=iron_golem,tag=potted_golem,scores={potted_golem_health=..3}] run kill @s


execute as @e[tag=potted_golem] positioned as @s unless entity @e[tag=potted_golem_as,distance=..3] run tp @s ~ ~-5 ~
execute as @e[tag=potted_golem] positioned as @s unless entity @e[tag=potted_golem_as,distance=..3] run kill @s

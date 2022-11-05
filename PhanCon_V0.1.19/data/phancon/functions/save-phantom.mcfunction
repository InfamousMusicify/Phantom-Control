execute unless @s[scores={save-phantom=2..}] as @e[limit=1,type=minecraft:phantom,sort=nearest,distance=..300] unless entity @s[tag=save-phantom] run tag @s add save-phantom
execute unless @s[scores={save-phantom=2..}] as @e[limit=1,type=minecraft:phantom,sort=nearest,distance=..300,tag=save-phantom] run say Saved
execute at @e[type=minecraft:phantom,sort=nearest,distance=..300,tag=save-phantom] run particle minecraft:composter ~ ~.85 ~ .5 .5 .5 .0001 22 force
scoreboard players set @s save.phantom 0
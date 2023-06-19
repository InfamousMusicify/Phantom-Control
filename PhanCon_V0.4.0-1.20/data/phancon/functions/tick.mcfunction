#phancon:tick
execute unless score #phancon phancon.config matches 1.. as @e[type=phantom] run team join friendly-phantom
execute if score #phancon phancon.config matches 1.. as @e[type=phantom,team=friendly-phantom] run team leave @s
#execute if score #phancon.kill phancon.config matches 1.. as @e[type=phantom,team=friendly-phantom] run tp @s ~ -200 ~
execute if score #phancon.kill phancon.config matches 1.. at @a[team=friendly-phantom] as @e[type=minecraft:phantom,team=friendly-phantom,distance=..15] unless entity @s[tag=save-phantom] run tp @s ~ -200 ~


#execute unless score #phancon phancon.config matches 1.. unless score #phancon.kill phancon.config matches 1.. as @e[type=phantom] run team join friendly-phantom
#execute if score #phancon phancon.config matches 1.. as @e[type=phantom,team=friendly-phantom] run team leave friendly-phantom

#execute unless score #phancon phancon.config matches 1.. if score #phancon.kill phancon.config matches 1.. as @e[type=phantom,distance..300] run team join friendly-phantom
#execute if score #phancon.kill phancon.config matches 1.. at @a[team=friendly-phantom] as @e[type=phantom,team=friendly-phantom,distance..300] run tp @s ~ -200 ~
scoreboard players enable @a phantoms
scoreboard players enable @a save.phantom
execute as @a[scores={phantoms=1}] run function phancon:phantoms-on
execute as @a[scores={phantoms=3..}] run function phancon:phantoms-off
execute as @a[scores={save.phantom=1..}] run function phancon:save-phantom

# # ## # #     # # #     # # ## # #     # # ## # # 
schedule function phancon:tick 1s

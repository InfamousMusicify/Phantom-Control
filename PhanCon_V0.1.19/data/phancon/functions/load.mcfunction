# phancon:load
team add friendly-phantom
#team add save-phantom
scoreboard objectives add phantoms trigger "Toggle Phantoms"
scoreboard objectives add save.phantom trigger "Save a Phantom"
scoreboard objectives add phancon.config dummy
execute unless score #phancon phancon.config matches 0.. run scoreboard players set #phancon phancon.config 0
execute unless score #phancon.kill phancon.config matches 0.. run scoreboard players set #phancon.kill phancon.config 0
schedule function phancon:tick 1s
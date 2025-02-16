# Sync ticks

scoreboard players operation @s pr.ticks = #global pr.ticks







# Get UUID

data modify storage pr:data tag.UUID set from entity @s UUID

execute store result score @s pr.uuid_0 run data get storage pr:data tag.UUID[0]
execute store result score @s pr.uuid_1 run data get storage pr:data tag.UUID[1]
execute store result score @s pr.uuid_2 run data get storage pr:data tag.UUID[2]
execute store result score @s pr.uuid_3 run data get storage pr:data tag.UUID[3]







# Send title

function pr:player/title







# Send to checkpoint

tag @s[team=!pr.spectator] remove pr.temp_checkpoint
execute if entity @s[team=!pr.spectator] run function pr:player/checkpoint/send_to
execute if entity @s[team=!pr.spectator] run scoreboard players set @s pr.plot 1041
execute if entity @s[team=!pr.spectator] run scoreboard players operation @s pr.plot_previous = @s pr.plot
execute if entity @s[team=!pr.spectator] run function pr:player/plot/coords_from_id







# Manage player

team join pr.player @s[team=!pr.spectator]
gamemode adventure @s[team=!pr.spectator]

tellraw @s [{"text":"Welcome to ","color":"gold"},{"text":"Project ","color":"white"},{"text":"Run ","color":"green"},{"text":"2","color":"yellow"}]
tellraw @s[team=!pr.spectator] [{"text":"Use ","color":"gray"},{"text":"/trigger spectate","color":"white"},{"text":" to spectate the map","color":"gray"}]
execute unless score @s pr.plot = #spawn_plot pr.value run tellraw @s[team=!pr.spectator] [{"text":"Use ","color":"gray"},{"text":"/trigger lobby","color":"white"},{"text":" to return to the lobby","color":"gray"}]
execute unless score @s pr.plot = #spawn_plot pr.value run tellraw @s[team=!pr.spectator] [{"text":"Use ","color":"gray"},{"text":"/trigger checkpoint","color":"white"},{"text":" to go to the previous checkpoint","color":"gray"}]
tellraw @s[team=pr.spectator] [{"text":"Use ","color":"gray"},{"text":"/trigger lobby","color":"white"},{"text":" to return to the lobby","color":"gray"}]
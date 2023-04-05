# Get coordinates

execute store result score #x pr.value run data get entity @s Pos[0]
execute store result score #y pr.value run data get entity @s Pos[1]
execute store result score #z pr.value run data get entity @s Pos[2]

scoreboard players add #x pr.value 32768
scoreboard players add #z pr.value 32768
scoreboard players operation #x pr.value %= #65536 pr.value
scoreboard players operation #z pr.value %= #65536 pr.value
scoreboard players remove #x pr.value 32768
scoreboard players remove #z pr.value 32768
scoreboard players add #x pr.value 8
scoreboard players add #z pr.value 8
scoreboard players operation #x pr.value %= #96 pr.value
scoreboard players operation #z pr.value %= #96 pr.value
scoreboard players remove #x pr.value 48
scoreboard players remove #z pr.value 48

tellraw @s [{"text":"Your relative coordinates are: ","color":"green"},{"score":{"name":"#x","objective":"pr.value"},"color":"gold"}," ",{"score":{"name":"#y","objective":"pr.value"},"color":"gold"}," ",{"score":{"name":"#z","objective":"pr.value"},"color":"gold"}]

scoreboard players set @s relative 0
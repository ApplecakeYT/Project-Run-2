#######
# Compiled from data/woutbelt/functions/red_enter.mcscript
# to .//woutbelt/data/woutbelt/functions/red_enter.mcfunction
#
# Generated by Minecraft Script for 1.16
######
execute as @s[y_rotation=-180..-90] run tag @s add cooldown 
execute as @s[y_rotation=-180..-90] run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 200 0
execute as @s[y_rotation=-180..-90] run particle minecraft:end_rod ~ ~ ~ 0 1 0 .2 20
execute as @s[y_rotation=-180..-90] run tp @s ~ ~ ~47.3
execute as @s[y_rotation=-180..-90] run particle minecraft:end_rod ~ ~ ~ 0 1 0 .2 20
execute as @s[y_rotation=90..180] run tag @s add cooldown 
execute as @s[y_rotation=90..180] run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 200 0
execute as @s[y_rotation=90..180] run particle minecraft:end_rod ~ ~ ~ 0 1 0 .2 20
execute as @s[y_rotation=90..180] run tp @s ~ ~ ~47.3
execute as @s[y_rotation=90..180] run particle minecraft:end_rod ~ ~ ~ 0 1 0 .2 20
#Puts phisical blocks on the platforms
execute at @e[type=minecraft:block_display,tag=subchronos_platform_pit3,tag=pr.target] run fill ~ ~4 ~ ~1 ~4 ~1 minecraft:barrier

scoreboard players set pit3_rised subchronos_hive 1
scoreboard players set pit3_moving subchronos_hive 0
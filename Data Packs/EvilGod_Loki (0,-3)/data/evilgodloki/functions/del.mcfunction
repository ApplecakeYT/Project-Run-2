#backspace

scoreboard players operation lokid lokicode = lokic lokicode
scoreboard players operation lokic lokicode = lokib lokicode
scoreboard players operation lokib lokicode = lokia lokicode
scoreboard players set lokia lokicode 0

execute as @e[tag=loki0000] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"score":{"name":"lokia","objective":"lokicode"},"color":"green"}','{"score":{"name":"lokib","objective":"lokicode"},"color":"green"}','{"score":{"name":"lokic","objective":"lokicode"},"color":"green"}','{"score":{"name":"lokid","objective":"lokicode"},"color":"green"}']}}
execute as @e[tag=lokiaa] at @e[tag=loki0000] run data modify entity @s text set from block ~ ~ ~ front_text.messages[0]
execute as @e[tag=lokibb] at @e[tag=loki0000] run data modify entity @s text set from block ~ ~ ~ front_text.messages[1]
execute as @e[tag=lokicc] at @e[tag=loki0000] run data modify entity @s text set from block ~ ~ ~ front_text.messages[2]
execute as @e[tag=lokidd] at @e[tag=loki0000] run data modify entity @s text set from block ~ ~ ~ front_text.messages[3]
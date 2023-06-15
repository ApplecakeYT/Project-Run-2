execute as @e[type=creeper,tag=JeepersCreepers,tag=pr.target] at @s unless block ~ ~ ~ air run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~-8 ~ purpur_block run item replace entity @s hotbar.0 with fire_charge
execute as @a[tag=pr.target] at @s unless block ~ ~-8 ~ purpur_block run clear @s fire_charge
execute as @a[tag=pr.target] at @s run effect give @s resistance 1 255 true

scoreboard players add tp TimerForSwag 1
execute if score tp1 TimerForSwag >= 8 TimerForSwag run execute as @e[type=creeper,tag=JeepersCreepers,tag=pr.target] at @s run tp @s ^ ^ ^1
execute if score tp1 TimerForSwag >= 8 TimerForSwag run scoreboard players set tp1 TimerForSwag 0

scoreboard players add Conveyor1 TimerForSwag 1
execute if score Conveyor1 TimerForSwag >= 16 TimerForSwag run execute as @e[type=marker,tag=Conveyor1,tag=pr.target] at @s run clone ~2 ~-10 ~-2 ~4 ~-12 ~6 ~ ~ ~
execute if score Conveyor1 TimerForSwag >= 16 TimerForSwag run execute as @e[type=marker,tag=Conveyor2,tag=pr.target] at @s run clone ~-2 ~-10 ~-2 ~-4 ~-12 ~6 ~ ~ ~
execute if score Conveyor1 TimerForSwag >= 16 TimerForSwag run execute as @e[type=marker,tag=Conveyor1,tag=pr.target] at @s run summon creeper ~1 ~3 ~ {NoAI:1b,Silent:1b,Tags:["JeepersCreepers"]}
execute if score Conveyor1 TimerForSwag >= 16 TimerForSwag run scoreboard players set Conveyor1 TimerForSwag 0

scoreboard players add Conveyor2 TimerForSwag 1
execute if score Conveyor2 TimerForSwag >= 16 TimerForSwag run execute as @e[type=marker,tag=Conveyor1,tag=pr.target] at @s run clone ~8 ~-10 ~-2 ~10 ~-12 ~6 ~ ~ ~
execute if score Conveyor2 TimerForSwag >= 16 TimerForSwag run execute as @e[type=marker,tag=Conveyor2,tag=pr.target] at @s run clone ~-8 ~-10 ~-2 ~-10 ~-12 ~6 ~ ~ ~
execute if score Conveyor2 TimerForSwag >= 16 TimerForSwag run execute as @e[type=marker,tag=Conveyor2,tag=pr.target] at @s run summon creeper ~1 ~3 ~8 {NoAI:1b,Silent:1b,Tags:["JeepersCreepers"],Rotation:[180f,0f]}
execute if score Conveyor2 TimerForSwag >= 16 TimerForSwag run scoreboard players set Conveyor1 TimerForSwag 0

scoreboard players add MiscExplosion TimerForSwag 1
execute if score MiscExplosion TimerForSwag >= 48 TimerForSwag run execute as @e[type=marker,tag=Swag_Misc_Explosion,tag=pr.target] at @s run summon creeper ~ ~ ~ {Fuse:0,Silent:1b}
execute if score MiscExplosion TimerForSwag >= 48 TimerForSwag run scoreboard players set MiscExplosion TimerForSwag 0
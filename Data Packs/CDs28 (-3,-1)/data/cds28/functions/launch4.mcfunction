#this set the cooldown of 35 ticks and play the sounds
scoreboard players add @s timerCDs 35
playsound minecraft:ui.toast.in block @a[tag=pr.target] ~ ~ ~ 5 2
playsound minecraft:item.trident.throw block @a[tag=pr.target] ~ ~ ~ 1 0.2
#this apply the motion correspondent for this launch platform
scoreboard players set #entity_mot_x pr.value -1800
scoreboard players set #entity_mot_y pr.value 800
scoreboard players set #entity_mot_z pr.value -350
execute as @s run function pr:player/launch/apply/vector
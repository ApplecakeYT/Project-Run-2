scoreboard players add @s inquognito.gun.damage 2

function inquognito:logic/abilities/gun/update

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Damage+ Upgrade","color":"aqua"}]
tellraw @s [{"text":"Damage: ","color":"yellow"},{"text":"+2","color":"aqua"}]

playsound minecraft:entity.player.levelup master @s

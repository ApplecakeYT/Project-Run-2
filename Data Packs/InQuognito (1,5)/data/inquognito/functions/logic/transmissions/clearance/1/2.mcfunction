scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Just as I thought; this fragment has new data.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"I am close to being able to generate a clearance passcode for you.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua"},{"text":"Continue searching. I believe that just one more will do.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 120.. run function inquognito:logic/transmissions/end

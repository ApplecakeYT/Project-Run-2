#this removes the checkpoint tags of other checkpoints
tag @s remove check1
tag @s remove check2
tag @s remove check3
tag @s remove check4
tag @s remove check5
tag @s remove check6
tag @s remove check7
#visual and sound feedback when activating a checkpoint
particle minecraft:sonic_boom ~ ~ ~ 0.1 0.1 0.1 0.2 1 normal
playsound minecraft:block.conduit.deactivate block @a[tag=pr.target] ~ ~ ~ 1 2
particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.08 15 normal
#this marks which is the player's checkpoint and indicates if the player has a checkpoint
tag @s add check8
tag @s add check
#this run the core checkpoint mark command
function pr:player/checkpoint/mark
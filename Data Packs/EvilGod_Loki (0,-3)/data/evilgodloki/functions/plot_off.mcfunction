# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
fill ~-2 ~5 ~-13 ~2 ~5 ~-13 emerald_block
kill @e[tag=loki]
kill @e[tag=lokierror]
kill @e[tag=lokibarr]
scoreboard objectives remove lokicode
#######
# Compiled from data/woutbelt/functions/plot_off.mcscript
# to .//woutbelt/data/woutbelt/functions/plot_off.mcfunction
#
# Generated by Minecraft Script for 1.16
######
scoreboard objectives remove woutbelt_timer
bossbar remove woutbelt:woutbelt_blue
bossbar remove woutbelt:woutbelt_red
kill @e[type=minecraft:text_display,tag=pr.target]
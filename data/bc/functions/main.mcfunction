# Because this happens BEFORE the countdown tick, any command blocks in the world will have the chance to detect this tag change and teleport them
# Before the tag is revoked
execute as @a[tag=bc_teleporting,tag=!bc_one_tick_delay] run function bc:registries/clear_tag
execute as @a[tag=bc_one_tick_delay] run tag @s remove bc_one_tick_delay

execute as @a[tag=bc_titling] run function bc:registries/clear_title_tag

execute as @a[tag=bc_countdown] run function bc:countdown/tick

# Handles the transfer of items between orange and lime carpets
execute if entity @a[tag=bc_item_dest] as @a[tag=on_orange] at @s as @a[tag=bc_item_dest] run tp @e[type=item,distance=..3] @s


# Doesn't really matter where this is, might only change by 1 or 2 ticks how long the cooldown duration is
execute as @a[tag=bc_cooldown] run scoreboard players remove @s carpet_cooldown 1
execute as @a[scores={carpet_cooldown=0}] run tag @s remove bc_cooldown
execute as @a[scores={carpet_cooldown=0}] run scoreboard players reset @s carpet_cooldown


# First we leave and THEN we join because then a player can walk onto one special carpet from another
# And they'll leave their previous carpet before entering the current one
execute as @a[tag=bc_on_carpet] at @s run function bc:registries/leaving
execute as @a[tag=!bc_on_carpet,tag=!bc_cooldown,tag=!bc_sneak_protection] at @s if block ~ ~ ~ #bc:special_carpets run function bc:registries/entering

# Get rid of a player's sneak protection
execute as @a[tag=bc_sneak_protection] at @s unless block ~ ~ ~ #bc:special_carpets run tag @s remove bc_sneak_protection

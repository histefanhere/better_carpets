# @WHAT: orange/leaving
# @WHY: when player leaves orange carpet
# @WHO: player leaving orange carpet
# @WHERE: ???

tag @s remove bc_on_carpet
tag @s remove on_orange

# If we leave, we want to update the display of possibly any players on green we were teleporting too
execute as @a[tag=bc_item_dest] at @s run function bc:carpets/special/lime/update_title

# Clear any titles the player may have
title @s times 0 10 10
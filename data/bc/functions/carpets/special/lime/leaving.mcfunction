# @WHAT: lime/leaving
# @WHY: when player leaves lime carpet
# @WHO: player leaving lime carpet
# @WHERE: ???

tag @s remove bc_on_carpet
tag @s remove on_lime

# If they were the destination player we give them a temporary tag
# This lets us remove their `bc_item_dest` tag BEFORE updating orange to cancel the item transfer
# (and hence orange sees the right subtitle)
execute if entity @s[tag=bc_item_dest] run tag @s add bc_was_item_dest
execute if entity @s[tag=bc_was_item_dest] run tag @s remove bc_item_dest
execute if entity @s[tag=bc_was_item_dest] as @a[tag=on_orange] run function bc:carpets/special/orange/stop_warp
execute if entity @s[tag=bc_was_item_dest] run tag @s remove bc_was_item_dest

# Clear any titles the player may have
title @s times 0 10 10
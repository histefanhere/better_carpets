# @WHAT: green/leaving
# @WHY: when player leaves green carpet
# @WHO: player leaving green carpet
# @WHERE: ???

tag @s remove bc_on_carpet
tag @s remove on_green

# If they were the destination player we give them a temporary tag
# This lets us remove their `bc_player_dest` tag BEFORE updating red to cancel the tp
# (and hence red sees the right subtitle)
execute if entity @s[tag=bc_player_dest] run tag @s add bc_was_dest
execute if entity @s[tag=bc_was_dest] run tag @s remove bc_player_dest
execute if entity @s[tag=bc_was_dest] as @a[tag=on_red] run function bc:red/stop_warp
execute if entity @s[tag=bc_was_dest] run tag @s remove bc_was_dest

# Clear any titles the player may have
title @s times 0 10 10
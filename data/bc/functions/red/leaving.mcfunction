# @WHAT: red/leaving
# @WHY: when player leaves red carpet
# @WHO: player leaving red carpet
# @WHERE: ???

tag @s remove bc_on_carpet
tag @s remove on_red

# If we leave, we want to update the display of possibly any players on green we were teleporting too
execute as @a[tag=bc_player_dest] at @s run function bc:green/update_title

# NOTE: I'll probably do something like this here:
# execute if score @s carpet_countdown matches 0.. run function bc:countdown/stop
function bc:countdown/stop

# Clear any titles the player may have
title @s times 0 10 10
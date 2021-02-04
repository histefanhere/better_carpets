# @WHAT: green/update_title
# @WHY: when something has changed and the player's subtitle needs to be updated
# @WHO: player on green
# @WHERE: ???

# 100 seconds * 20 ticks/second = 2000 ticks
title @s times 1 2000 10

# - they are NOT the destination player
# => warn them to step off
execute unless entity @s[tag=bc_player_dest] run title @s subtitle [{"text":"WARNING:","color":"gold","bold":true},{"text":" A player is already on green!","color":"white","bold":false}]

# - they are the destination player
# - there is no one on red
# => they are waiting for someone to step on red and teleport to us
execute if entity @s[tag=bc_player_dest] unless entity @a[tag=on_red] run title @s subtitle [{"text":"Waiting for a player on "},{"text":"red","color":"red","bold":true},{"text":" to warp here...","color":"white","bold":false}]

# - they are the destination player
# - there is someone on red
# => show that they're getting teleported to us
execute if entity @s[tag=bc_player_dest] if entity @a[tag=on_red] run title @s subtitle [{"text":"Teleporting "},{"selector":"@a[tag=on_red]","bold":true},{"text":" here","color":"white","bold":false}]

title @s title ""
# @WHAT: lime/update_title
# @WHY: when something has changed and the player's subtitle needs to be updated
# @WHO: player on lime
# @WHERE: ???

# 100 seconds * 20 ticks/second = 2000 ticks
title @s times 1 2000 10

# - they are NOT the destination player
# => warn them to step off
execute unless entity @s[tag=bc_item_dest] run title @s subtitle [{"text":"WARNING:","color":"gold","bold":true},{"text":" A player is already on lime!","color":"white","bold":false}]

# - they are the destination player
# - there is no one on red
# => they are waiting for someone to step on red and teleport to us
execute if entity @s[tag=bc_item_dest] unless entity @a[tag=on_orange] run title @s subtitle [{"text":"Waiting for player on "},{"text":"orange","color":"#f57d2c","bold":true},{"text":" to send items...","color":"white","bold":false}]

# - they are the destination player
# - there is someone on red
# => show that they're getting teleported to us
execute if entity @s[tag=bc_item_dest] if entity @a[tag=on_orange] run title @s subtitle [{"text":"Receiving items from: "},{"selector":"@a[tag=on_orange]","bold":true}]

title @s title ""
# @WHAT: orange/update_title
# @WHY: when something has changed and the player's subtitle needs to be updated
# @WHO: player on orange
# @WHERE: ???

# 100 seconds * 20 ticks/second = 2000 ticks
title @s times 1 2000 10

# - there is no destination player
# => they're waiting for a destination player
execute unless entity @a[tag=bc_item_dest] run title @s subtitle [{"text":"Waiting for player on "},{"text":"lime","color":"#39ba2e","bold":true},{"text":" to recieve items...","color":"white","bold":false}]

# - there is a destination player
# => they're teleporting to them
execute if entity @a[tag=bc_item_dest] run title @s subtitle [{"text":"Sending items to: "},{"selector":"@a[tag=bc_item_dest]","bold":true}]

title @s title ""
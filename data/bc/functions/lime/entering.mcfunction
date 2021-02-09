# @WHAT: lime/entering
# @WHY: when player first steps onto lime carpet
# @WHO: player stepping on lime
# @WHERE: ???

tag @s add bc_on_carpet
tag @s add on_lime

# This tag is the teleport target tag - only ONE player can have it at a time
execute unless entity @a[tag=bc_item_dest] run tag @s add bc_item_dest

# What if there's already an active trade hapenning?
execute unless entity @s[tag=bc_item_dest] run function bc:lime/update_title

# There are TWO possible scenarioes when @s steps onto the lime carpet:
# 1 - There is no one on an orange carpet to send items to us
#   - @a[tag=on_orange] will fail
#   - Waiting for player title needs to show
execute if entity @s[tag=bc_item_dest] unless entity @a[tag=on_orange] run function bc:lime/update_title

# 2 - There is already someone waiting on an orange carpet to send items to us
#   - @a[tag=on_orange] will succeed
#   - Begin item transfer
execute if entity @s[tag=bc_item_dest] if entity @a[tag=on_orange] as @a[tag=on_orange] run function bc:orange/start_warp

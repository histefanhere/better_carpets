# @WHAT: orange/entering
# @WHY: when player first steps onto orange carpet
# @WHO: player stepping on orange
# @WHERE: ???

tag @s add bc_on_carpet
tag @s add on_orange

# There are TWO possible scenarioes when @s steps onto the red carpet:
# 1 - There is no one on a green carpet to warp too
#   - @a[tag=bc_player_dest] will fail
#   - Waiting for player title needs to show
execute unless entity @a[tag=bc_item_dest] run function bc:orange/update_title

# 2 - There is already someone waiting on a green carpet to warp too
#   - Begin warping
execute if entity @a[tag=bc_item_dest] run function bc:orange/start_warp

# @WHAT: red/entering
# @WHY: when player first steps onto red carpet
# @WHO: player stepping on red
# @WHERE: ???

tag @s add bc_on_carpet
tag @s add on_red

# There are TWO possible scenarioes when @s steps onto the red carpet:
# 1 - There is no one on a green carpet to warp too
#   - @a[tag=bc_player_dest] will fail
#   - Waiting for player title needs to show
execute unless entity @a[tag=bc_player_dest] run function bc:carpets/special/red/update_title

# 2 - There is already someone waiting on a green carpet to warp too
#   - Begin warping
execute if entity @a[tag=bc_player_dest] run function bc:carpets/special/red/start_warp

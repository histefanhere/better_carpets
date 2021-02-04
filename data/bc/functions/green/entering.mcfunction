# @WHAT: green/entering
# @WHY: when player first steps onto green carpet
# @WHO: player stepping on green
# @WHERE: ???

tag @s add bc_on_carpet
tag @s add on_green

# This tag is the teleport target tag - only ONE player can have it at a time
execute unless entity @a[tag=bc_player_dest] run tag @s add bc_player_dest

# There are TWO possible scenarioes when @s steps onto the green carpet:
# 1 - There is no one on a red carpet to warp to us
#   - @a[tag=on_red] will fail
#   - Waiting for player title needs to show
execute unless entity @a[tag=on_red] run function bc:green/update_title

# 2 - There is already someone waiting on a red carpet to warp to us
#   - @a[tag=on_red] will succeed
#   - Begin their warping
execute if entity @a[tag=on_red] as @a[tag=on_red] run function bc:red/start_warp

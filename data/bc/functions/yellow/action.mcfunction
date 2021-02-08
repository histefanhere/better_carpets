# @WHAT: yellow/action
# @WHY: countdown ended, player needs to be teleported to destination
# @WHO: player who needs to be tp'd
# @WHERE: ???

# When this teleporting tag is added we know the user is also getting a second tag that some command block in the world will teleport to somewhere accordingly
tag @s add bc_teleporting
tag @s add bc_to_wilderness
tag @s add bc_from_yellow

title @s title {"text":".........","color":"yellow"}

# No woosh.
# tellraw @s {"text":"Woosh!","color":"light_purple"}

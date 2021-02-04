# @WHAT: registries/clear_tag
# @WHY: when a player has TP'd to somewhere via a configurable command block somewhere in the world, this function needs to remove that tag.
# @WHO: player stepping on lime
# @WHERE: ???

execute as @s[tag=bc_to_home] run tag @s remove bc_to_home
execute as @s[tag=bc_to_central] run tag @s remove bc_to_central
execute as @s[tag=bc_to_wilderness] run tag @s remove bc_to_wilderness


# Remove the tag that let them call this function in the first place (via bc:main)
tag @s remove bc_teleporting
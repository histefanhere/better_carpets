# @WHAT: registries/clear_tag
# @WHY: when a player has TP'd to somewhere via a configurable command block somewhere in the world, this function needs to remove that tag.
# @WHO: player stepping on lime
# @WHERE: ???

execute as @s[tag=bc_to_home] run tag @s remove bc_to_home
execute as @s[tag=bc_to_central] run tag @s remove bc_to_central
execute as @s[tag=bc_to_wilderness] run tag @s remove bc_to_wilderness


execute as @s[tag=bc_from_white] run tag @s remove bc_from_white
execute as @s[tag=bc_from_yellow] run tag @s remove bc_from_yellow
execute as @s[tag=bc_from_purple] run tag @s remove bc_from_purple

execute as @s[tag=bc_from_pink] run tag @s remove bc_from_pink
execute as @s[tag=bc_from_blue] run tag @s remove bc_from_blue
execute as @s[tag=bc_from_magenta] run tag @s remove bc_from_magenta
execute as @s[tag=bc_from_light_blue] run tag @s remove bc_from_light_blue
execute as @s[tag=bc_from_gray] run tag @s remove bc_from_gray
execute as @s[tag=bc_from_light_gray] run tag @s remove bc_from_light_gray
execute as @s[tag=bc_from_cyan] run tag @s remove bc_from_cyan
execute as @s[tag=bc_from_brown] run tag @s remove bc_from_brown
execute as @s[tag=bc_from_black] run tag @s remove bc_from_black

# Remove the tag that let them call this function in the first place (via bc:main)
tag @s remove bc_teleporting
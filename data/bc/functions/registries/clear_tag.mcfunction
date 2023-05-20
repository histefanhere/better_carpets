# @WHAT: registries/clear_tag
# @WHY: when a player has TP'd to somewhere via a configurable command block somewhere in the world, this function needs to remove that tag.
# @WHO: player stepping on lime
# @WHERE: ???

# Server carpets
execute as @s[tag=bc_to_home] run tag @s remove bc_to_home
execute as @s[tag=bc_to_central] run tag @s remove bc_to_central
execute as @s[tag=bc_to_wilderness] run tag @s remove bc_to_wilderness
execute as @s[tag=bc_to_admin] run tag @s remove bc_to_admin
execute as @s[tag=bc_to_nether_hub] run tag @s remove bc_to_nether_hub
execute as @s[tag=bc_to_end_portal] run tag @s remove bc_to_end_portal
execute as @s[tag=bc_to_border] run tag @s remove bc_to_border

execute as @s[tag=bc_from_yellow_wilderness] run tag @s remove bc_from_yellow_wilderness
execute as @s[tag=bc_from_white_spawn] run tag @s remove bc_from_white_spawn
execute as @s[tag=bc_from_white_nether_hub] run tag @s remove bc_from_white_nether_hub
execute as @s[tag=bc_from_white_end_portal] run tag @s remove bc_from_white_end_portal
execute as @s[tag=bc_from_white_border] run tag @s remove bc_from_white_border
execute as @s[tag=bc_from_purple_border] run tag @s remove bc_from_purple_border
execute as @s[tag=bc_from_admin_brown] run tag @s remove bc_from_admin_brown


# Home carpets
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


# Server carpets
execute unless predicate bc:sneaking as @s[tag=!on_yellow_wilderness] as @s[team=!pvp,nbt=!{Dimension:"minecraft:the_end"}] if predicate bc:on_yellow run function bc:carpets/server/yellow_wilderness/entering
execute unless predicate bc:sneaking as @s[tag=!on_white_spawn] as @s[team=!pvp,team=!wilderness,nbt={Dimension:"minecraft:overworld"}] if predicate bc:on_white run function bc:carpets/server/white_spawn/entering
execute unless predicate bc:sneaking as @s[tag=!on_white_nether_hub] as @s[team=!pvp,team=!wilderness,nbt={Dimension:"minecraft:the_nether"}] if predicate bc:on_white run function bc:carpets/server/white_nether_hub/entering
execute unless predicate bc:sneaking as @s[tag=!on_white_end_portal] as @s[nbt={Dimension:"minecraft:the_end"}] if predicate bc:on_white run function bc:carpets/server/white_end_portal/entering
execute unless predicate bc:sneaking as @s[tag=!on_white_border] as @s[team=pvp,nbt=!{Dimension:"minecraft:the_end"}] if predicate bc:on_white run function bc:carpets/server/white_border/entering
execute unless predicate bc:sneaking as @s[tag=!on_purple_border] as @s[team=!wilderness,nbt={Dimension:"minecraft:overworld"}] if predicate bc:on_purple run function bc:carpets/server/purple_border/entering
execute unless predicate bc:sneaking as @s[tag=!on_admin_brown] as @s[tag=admin] if predicate bc:on_brown run function bc:carpets/server/admin_brown/entering


# Home carpets
# Note the special case that admins can't have brown home carpets
execute unless predicate bc:sneaking as @s[tag=!on_magenta] as @s[tag=bc_HOME_MAGENTA] if predicate bc:on_magenta run function bc:carpets/home/magenta/entering
execute unless predicate bc:sneaking as @s[tag=!on_light_blue] as @s[tag=bc_HOME_LIGHT_BLUE] if predicate bc:on_light_blue run function bc:carpets/home/light_blue/entering
execute unless predicate bc:sneaking as @s[tag=!on_pink] as @s[tag=bc_HOME_PINK] if predicate bc:on_pink run function bc:carpets/home/pink/entering
execute unless predicate bc:sneaking as @s[tag=!on_gray] as @s[tag=bc_HOME_GRAY] if predicate bc:on_gray run function bc:carpets/home/gray/entering
execute unless predicate bc:sneaking as @s[tag=!on_light_gray] as @s[tag=bc_HOME_LIGHT_GRAY] if predicate bc:on_light_gray run function bc:carpets/home/light_gray/entering
execute unless predicate bc:sneaking as @s[tag=!on_cyan] as @s[tag=bc_HOME_CYAN] if predicate bc:on_cyan run function bc:carpets/home/cyan/entering
execute unless predicate bc:sneaking as @s[tag=!on_blue] as @s[tag=bc_HOME_BLUE] if predicate bc:on_blue run function bc:carpets/home/blue/entering
execute unless predicate bc:sneaking as @s[tag=!on_brown] as @s[tag=bc_HOME_BROWN] as @s[tag=!admin] if predicate bc:on_brown run function bc:carpets/home/brown/entering
execute unless predicate bc:sneaking as @s[tag=!on_black] as @s[tag=bc_HOME_BLACK] if predicate bc:on_black run function bc:carpets/home/black/entering


# Special carpets
execute unless predicate bc:sneaking as @s[tag=!on_red] if predicate bc:on_red run function bc:carpets/special/red/entering
execute unless predicate bc:sneaking as @s[tag=!on_green] if predicate bc:on_green run function bc:carpets/special/green/entering

execute unless predicate bc:sneaking as @s[tag=!on_orange] if predicate bc:on_orange run function bc:carpets/special/orange/entering
execute unless predicate bc:sneaking as @s[tag=!on_lime] if predicate bc:on_lime run function bc:carpets/special/lime/entering

# If the player enters a carpet while sneaking, they should get sneak protection
# Which will let them stand up and will last until they step off a special carpet
execute if predicate bc:sneaking run tag @s add bc_sneak_protection

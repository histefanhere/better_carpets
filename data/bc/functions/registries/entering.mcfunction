
execute as @s[tag=!on_yellow_wilderness] as @s[nbt=!{Dimension:"minecraft:the_end"}] if predicate bc:on_yellow run function bc:yellow_wilderness/entering
execute as @s[tag=!on_white_spawn] as @s[team=!pvp,team=!wilderness,nbt={Dimension:"minecraft:overworld"}] if predicate bc:on_white run function bc:white_spawn/entering
execute as @s[tag=!on_white_nether_hub] as @s[team=!pvp,team=!wilderness,nbt={Dimension:"minecraft:the_nether"}] if predicate bc:on_white run function bc:white_nether_hub/entering
execute as @s[tag=!on_white_end_portal] as @s[nbt={Dimension:"minecraft:the_end"}] if predicate bc:on_white run function bc:white_end_portal/entering
execute as @s[tag=!on_white_border] as @s[team=pvp,nbt=!{Dimension:"minecraft:the_end"}] if predicate bc:on_white run function bc:white_border/entering
execute as @s[tag=!on_purple_border] as @s[team=!wilderness,nbt={Dimension:"minecraft:overworld"}] if predicate bc:on_purple run function bc:purple_border/entering

execute as @s[tag=!on_red] if predicate bc:on_red run function bc:red/entering
execute as @s[tag=!on_green] if predicate bc:on_green run function bc:green/entering

execute as @s[tag=!on_orange] if predicate bc:on_orange run function bc:orange/entering
execute as @s[tag=!on_lime] if predicate bc:on_lime run function bc:lime/entering

execute as @s[tag=!on_magenta] as @s[tag=bc_HOME_MAGENTA] if predicate bc:on_magenta run function bc:magenta/entering
execute as @s[tag=!on_light_blue] as @s[tag=bc_HOME_LIGHT_BLUE] if predicate bc:on_light_blue run function bc:light_blue/entering
execute as @s[tag=!on_pink] as @s[tag=bc_HOME_PINK] if predicate bc:on_pink run function bc:pink/entering
execute as @s[tag=!on_gray] as @s[tag=bc_HOME_GRAY] if predicate bc:on_gray run function bc:gray/entering
execute as @s[tag=!on_light_gray] as @s[tag=bc_HOME_LIGHT_GRAY] if predicate bc:on_light_gray run function bc:light_gray/entering
execute as @s[tag=!on_cyan] as @s[tag=bc_HOME_CYAN] if predicate bc:on_cyan run function bc:cyan/entering
execute as @s[tag=!on_blue] as @s[tag=bc_HOME_BLUE] if predicate bc:on_blue run function bc:blue/entering
execute as @s[tag=!on_brown] as @s[tag=bc_HOME_BROWN] if predicate bc:on_brown run function bc:brown/entering
execute as @s[tag=!on_black] as @s[tag=bc_HOME_BLACK] if predicate bc:on_black run function bc:black/entering

execute as @s[tag=!on_admin_brown] as @s[tag=admin] if predicate bc:on_brown run function bc:admin_brown/entering
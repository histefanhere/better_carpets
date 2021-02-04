
execute as @s[tag=!on_white] as @s[tag=bc_CENTRAL] if predicate bc:on_white run function bc:white/entering
execute as @s[tag=!on_yellow] if predicate bc:on_yellow run function bc:yellow/entering
execute as @s[tag=!on_purple] as @s[tag=bc_HOME_PURPLE] if predicate bc:on_purple run function bc:purple/entering

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
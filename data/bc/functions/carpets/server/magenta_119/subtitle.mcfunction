# @WHAT: magenta_119/subtitle
# @WHY: player entered carpet, countdown is showing and it needs a subtitle
# @WHO: player who entered carpet
# @WHERE: ???

execute if entity @s[tag=bc_HOME_MAGENTA_119_CUSTOM_TITLE] run tag @s add bc_titling
execute if entity @s[tag=bc_HOME_MAGENTA_119_CUSTOM_TITLE] run tag @s add bc_title_magenta_119

execute unless entity @s[tag=bc_HOME_MAGENTA_119_CUSTOM_TITLE] run title @s subtitle [{"text":"Teleporting to: "},{"text":"1.19 spawn","bold":true,"color":"light_purple"}]

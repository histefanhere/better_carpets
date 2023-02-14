# @WHAT: yellow_wilderness/subtitle
# @WHY: player entered carpet, countdown is showing and it needs a subtitle
# @WHO: player who entered carpet
# @WHERE: ???

execute if entity @s[tag=bc_HOME_YELLOW_WILDERNESS_CUSTOM_TITLE] run tag @s add bc_titling
execute if entity @s[tag=bc_HOME_YELLOW_WILDERNESS_CUSTOM_TITLE] run tag @s add bc_title_yellow_wilderness

execute unless entity @s[tag=bc_HOME_YELLOW_WILDERNESS_CUSTOM_TITLE] run title @s subtitle [{"text":"Teleporting to: "},{"text":"wilderness","bold":true,"color":"yellow"}]

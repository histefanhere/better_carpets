# @WHAT: gray/subtitle
# @WHY: player entered carpet, countdown is showing and it needs a subtitle
# @WHO: player who entered carpet
# @WHERE: ???

execute if entity @s[tag=bc_HOME_GRAY_CUSTOM_TITLE] run tag @s add bc_titling
execute if entity @s[tag=bc_HOME_GRAY_CUSTOM_TITLE] run tag @s add bc_title_gray

execute unless entity @s[tag=bc_HOME_GRAY_CUSTOM_TITLE] run title @s subtitle [{"text":"Teleporting to: "},{"text":"home","bold":true,"color":"dark_gray"}]

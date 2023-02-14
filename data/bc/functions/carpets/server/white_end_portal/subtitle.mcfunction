# @WHAT: white_end_portal/subtitle
# @WHY: player entered carpet, countdown is showing and it needs a subtitle
# @WHO: player who entered carpet
# @WHERE: ???

execute if entity @s[tag=bc_HOME_WHITE_END_PORTAL_CUSTOM_TITLE] run tag @s add bc_titling
execute if entity @s[tag=bc_HOME_WHITE_END_PORTAL_CUSTOM_TITLE] run tag @s add bc_title_white_end_portal

execute unless entity @s[tag=bc_HOME_WHITE_END_PORTAL_CUSTOM_TITLE] run title @s subtitle [{"text":"Teleporting to: "},{"text":"end portal","bold":true,"color":"white"}]

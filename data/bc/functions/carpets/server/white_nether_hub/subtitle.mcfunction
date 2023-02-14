# @WHAT: white_nether_hub/subtitle
# @WHY: player entered carpet, countdown is showing and it needs a subtitle
# @WHO: player who entered carpet
# @WHERE: ???

execute if entity @s[tag=bc_HOME_WHITE_NETHER_HUB_CUSTOM_TITLE] run tag @s add bc_titling
execute if entity @s[tag=bc_HOME_WHITE_NETHER_HUB_CUSTOM_TITLE] run tag @s add bc_title_white_nether_hub

execute unless entity @s[tag=bc_HOME_WHITE_NETHER_HUB_CUSTOM_TITLE] run title @s subtitle [{"text":"Teleporting to: "},{"text":"nether hub","bold":true,"color":"white"}]

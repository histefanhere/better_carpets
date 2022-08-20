# @WHAT: white_border/subtitle
# @WHY: player entered carpet, countdown is showing and it needs a subtitle
# @WHO: player who entered carpet
# @WHERE: ???

title @s subtitle [{"text":"Teleporting to: "},{"text":"borderlands","bold":true,"color":"white"}]

execute as @s[tag=bc_HOME_WHITE_BORDER_TYPE_FARM] run title @s subtitle [{"text":"Teleporting to: "},{"text":"farm","bold":true,"color":"white"}]
execute as @s[tag=bc_HOME_WHITE_BORDER_TYPE_BASE] run title @s subtitle [{"text":"Teleporting to: "},{"text":"base","bold":true,"color":"white"}]
execute as @s[tag=bc_HOME_WHITE_BORDER_TYPE_PROJECT] run title @s subtitle [{"text":"Teleporting to: "},{"text":"project","bold":true,"color":"white"}]
execute as @s[tag=bc_HOME_WHITE_BORDER_TYPE_HOME2] run title @s subtitle [{"text":"Teleporting to: "},{"text":"home 2","bold":true,"color":"white"}]
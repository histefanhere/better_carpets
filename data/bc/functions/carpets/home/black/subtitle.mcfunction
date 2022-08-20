# @WHAT: black/subtitle
# @WHY: player entered carpet, countdown is showing and it needs a subtitle
# @WHO: player who entered carpet
# @WHERE: ???

title @s subtitle [{"text":"Teleporting to: "},{"text":"home","bold":true,"color":"#2e2e2e"}]

execute as @s[tag=bc_HOME_BLACK_TYPE_FARM] run title @s subtitle [{"text":"Teleporting to: "},{"text":"farm","bold":true,"color":"#2e2e2e"}]
execute as @s[tag=bc_HOME_BLACK_TYPE_BASE] run title @s subtitle [{"text":"Teleporting to: "},{"text":"base","bold":true,"color":"#2e2e2e"}]
execute as @s[tag=bc_HOME_BLACK_TYPE_PROJECT] run title @s subtitle [{"text":"Teleporting to: "},{"text":"project","bold":true,"color":"#2e2e2e"}]
execute as @s[tag=bc_HOME_BLACK_TYPE_HOME2] run title @s subtitle [{"text":"Teleporting to: "},{"text":"home 2","bold":true,"color":"#2e2e2e"}]

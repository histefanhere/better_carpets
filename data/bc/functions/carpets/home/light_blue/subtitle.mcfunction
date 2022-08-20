# @WHAT: light_blue/subtitle
# @WHY: player entered carpet, countdown is showing and it needs a subtitle
# @WHO: player who entered carpet
# @WHERE: ???

title @s subtitle [{"text":"Teleporting to: "},{"text":"home","bold":true,"color":"aqua"}]

execute as @s[tag=bc_HOME_LIGHT_BLUE_TYPE_FARM] run title @s subtitle [{"text":"Teleporting to: "},{"text":"farm","bold":true,"color":"aqua"}]
execute as @s[tag=bc_HOME_LIGHT_BLUE_TYPE_BASE] run title @s subtitle [{"text":"Teleporting to: "},{"text":"base","bold":true,"color":"aqua"}]
execute as @s[tag=bc_HOME_LIGHT_BLUE_TYPE_PROJECT] run title @s subtitle [{"text":"Teleporting to: "},{"text":"project","bold":true,"color":"aqua"}]
execute as @s[tag=bc_HOME_LIGHT_BLUE_TYPE_HOME2] run title @s subtitle [{"text":"Teleporting to: "},{"text":"home 2","bold":true,"color":"aqua"}]

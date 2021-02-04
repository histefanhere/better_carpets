# @WHAT: red/action
# @WHY: countdown ended, player needs to be teleported to player on green
# @WHO: player who needs to be tp'd
# @WHERE: ???

# Activate cooldown that prevents player from interacting with any other carpets for 5 seconds
scoreboard players set @s carpet_cooldown 100
tag @s add bc_cooldown

tp @a[tag=bc_player_dest,limit=1]
# woosh!
tellraw @s {"text":"Woosh!","color":"light_purple"}

execute if entity @p[tag=bc_player_dest,team=green] run title @s title {"text":".........","color":"green"}
execute if entity @p[tag=bc_player_dest,team=dark_red] run title @s title {"text":".........","color":"dark_red"}
execute if entity @p[tag=bc_player_dest,team=dark_green] run title @s title {"text":".........","color":"dark_green"}
execute if entity @p[tag=bc_player_dest,team=black] run title @s title {"text":".........","color":"black"}
execute if entity @p[tag=bc_player_dest,team=yellow] run title @s title {"text":".........","color":"yellow"}
execute if entity @p[tag=bc_player_dest,team=dark_blue] run title @s title {"text":".........","color":"dark_blue"}
execute if entity @p[tag=bc_player_dest,team=dark_purple] run title @s title {"text":".........","color":"dark_purple"}
execute if entity @p[tag=bc_player_dest,team=gold] run title @s title {"text":".........","color":"gold"}
execute if entity @p[tag=bc_player_dest,team=orange] run title @s title {"text":".........","color":"red"}
execute if entity @p[tag=bc_player_dest,team=aqua] run title @s title {"text":".........","color":"aqua"}
execute if entity @p[tag=bc_player_dest,team=light_purple] run title @s title {"text":".........","color":"light_purple"}
execute if entity @p[tag=bc_player_dest,team=gray] run title @s title {"text":".........","color":"gray"}
execute if entity @p[tag=bc_player_dest,team=blue] run title @s title {"text":".........","color":"blue"}
execute if entity @p[tag=bc_player_dest,team=dark_aqua] run title @s title {"text":".........","color":"dark_aqua"}
execute if entity @p[tag=bc_player_dest,team=dark_gray] run title @s title {"text":".........","color":"dark_gray"}
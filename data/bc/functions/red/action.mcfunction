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

# TODO: One for each team colour
execute if entity @p[tag=bc_player_dest,team=blue] run title @s title {"text":".........","color":"blue"}
execute if entity @p[tag=bc_player_dest,team=gold] run title @s title {"text":".........","color":"gold"}


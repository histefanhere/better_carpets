function bc:countdown/animate

execute if score @s carpet_countdown matches ..107 run scoreboard players add @s carpet_countdown 4
execute if score @s carpet_countdown matches ..107 if entity @s[tag=bc_fast] run scoreboard players add @s carpet_countdown 2
execute if score @s carpet_countdown matches ..107 if entity @s[tag=bc_faster] run scoreboard players add @s carpet_countdown 8
execute if score @s carpet_countdown matches ..107 if entity @s[tag=bc_instant] run scoreboard players add @s carpet_countdown 104
execute if score @s carpet_countdown matches ..107 if entity @s[tag=bc_slow] run scoreboard players remove @s carpet_countdown 1

execute if score @s carpet_countdown matches 108.. run function bc:countdown/ended


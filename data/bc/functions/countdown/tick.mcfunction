function bc:countdown/animate

execute if score @s carpet_countdown matches ..26 run scoreboard players add @s carpet_countdown 1

execute if score @s carpet_countdown matches 27 run function bc:countdown/ended


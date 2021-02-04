
# Only those with this tag will call the countdown_tick function
tag @s add bc_countdown

function bc:registries/subtitle

title @s times 0 10 0

# This is essentially what triggers the entire countdown mechanism
# Because once the player has a score it can begin to be incremented
scoreboard players add @s carpet_countdown 0


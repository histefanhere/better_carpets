# @WHAT: red/start_warp
# @WHY: when both players are on carpet and warping can begin
# @WHO: player stepping on red
# @WHERE: ???

execute as @a[tag=bc_player_dest,limit=1] at @s run function bc:green/update_title

function bc:countdown/start

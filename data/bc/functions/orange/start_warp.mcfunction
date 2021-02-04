# @WHAT: orange/start_warp
# @WHY: when both players are on carpet and warping can begin
# @WHO: player stepping on orange
# @WHERE: ???

function bc:orange/update_title

execute as @a[tag=bc_item_dest,limit=1] at @s run function bc:lime/update_title

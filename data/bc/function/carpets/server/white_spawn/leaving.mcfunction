# @WHAT: white_spawn/leaving
# @WHY: when player leaves white_spawn carpet
# @WHO: player leaving white_spawn carpet
# @WHERE: ???

tag @s remove bc_on_carpet
tag @s remove on_white_spawn

function bc:countdown/stop

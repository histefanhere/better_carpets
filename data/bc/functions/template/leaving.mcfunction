# @WHAT: %NAME%/leaving
# @WHY: when player leaves %NAME% carpet
# @WHO: player leaving %NAME% carpet
# @WHERE: ???

tag @s remove bc_on_carpet
tag @s remove on_%NAME%

function bc:countdown/stop

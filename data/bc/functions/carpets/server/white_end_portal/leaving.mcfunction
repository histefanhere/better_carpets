# @WHAT: white_end_portal/leaving
# @WHY: when player leaves white_end_portal carpet
# @WHO: player leaving white_end_portal carpet
# @WHERE: ???

tag @s remove bc_on_carpet
tag @s remove on_white_end_portal

function bc:countdown/stop

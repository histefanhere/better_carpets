# @WHAT: red/stop_warp
# @WHY: other player stepped of green carpet, stop warping to this player
# @WHO: player still on red carpet
# @WHERE: ???

# This is very similar to what happens in red/leaving, but in addition to stopping the countdown
# We need to update their title.

function bc:countdown/stop

function bc:carpets/special/red/update_title
# Notes

## Carpet colours

1. server carpets:
   - white
   - yellow
   - purple
   - brown

2. home carpets:
   - magenta
   - light_blue
   - pink
   - gray
   - light_gray
   - cyan
   - blue
   - brown
   - black

3. special carpets:
   - player tp: red/green
   - item tp: orange/lime

## Permissions logic

+------------------+-----------+----------+------------+
|      Colour      | Overworld |  Nether  |    End     |
+------------------+-----------+----------+------------+
| WILD - Yellow    | wild      | wild     | -          |
| CENTRAL - Yellow | wild      | wild     | -          |
| PVP - Yellow     | -         | -        | -          |

| WILD - White     | -         | -        | end portal |
| CENTRAL - White  | spawn     | netspawn | end portal |
| PVP - White      | bord      | bord     | end portal |

| WILD - Purple    | -         | -        | -          |
| CENTRAL - Purple | bord      | -        | -          |
| PVP - Purple     | bord      | -        | -          |
+------------------+-----------+----------+------------+

- yellow_wilderness: yellow, !end, !pvp => wilderness
- white_spawn: white, !wild, !pvp, ow, => spawn
- white_nether_hub: white, !wild, !pvp, net, => netspawn
- white_end_portal white, end => end portal
- white_border white, pvp, !end => border
- purple_border purple, !wild, ow => border
- admin: brown

## Tasks

TODO:
none!

IDEAS/IMPROVEMENTS:
- switch from:
  `execute as @a[tag=bc_to_home,tag=bc_from_pink] as @s[name=Histefanhere] in overworld run tp @s 231 112 -825`
  to
  `execute as @a[tag=bc_from_pink,name=Histefanhere] run tp @s 231 112 -825`
  or
  `execute as @a[tag=bc_from_pink] as Histefanhere run tp @s 231 112 -825` (DOESN'T WORK)
  or
  `execute as @a[tag=on_pink,name=Histefanhere] positioned 231 112 -825 run function bc:update`
  how about
  `execute as @a[name=Histefanhere] positioned 231 112 -825 run function bc:brown/update`
  - remove the need for the tags!!!!!
- instead of saying "Teleporting to: *spawn*" maybe just say "*spawn*"?
- standardize tags
    - get rid of the weird capitalization of bc_HOME_BLACK carpets
    - standardize which tags are manually set by the player and which are auto-set by the datapack and which are "triggers"
- make each carpet programmable in-game
    - e.g. so the pack wouldn't need to be entirely updated for special server carpets like the 1.19 carpet
    - `/data merge storage` for their behaviour

COMPLETED:
- compilation script that ignores python scripts
- fix error on server startup (Failed to load function bc:template/subtitle), caused by mc trying to load the template files
- adjustable carpet tp speed
    - bc_slow, bc_normal, bc_medium, bc_fast, bc_instant tags
    - just change the increment amount (can use a multiple of 12 max!)
- create a web interface for filling in a fourm of info, click "Generate Commands" and it pre-fills the home commands
    - Inputs: username, carpet colour, carpet name, carpet destination (x, y, z, dimension)
- DOCUMENTATION
- all home carpets just show "home" when tping but there could be different types that show things like "farm", "project", "base" instead
- categorize functions into folders - "special", "home", "transport" etc
    - maybe even put all carpets into "carpets" folder, then from there categorize further
    - would require A LOT of rewriting other things
- readme
- instructions
    - write down all in game commands
    - SETUP.md
- comment code files
- lime/orange carpets should block a 3rd participant from joining in on the trade of items
- 2 on orange -> 1 on lime
    - might need to split up the one line command in `main`
orange doesn't show title when there's an active trade happening
- BORDERLANDS PLAYERS SHOULDN'T BE ABLE TO GET TO wilderness
- + what else does the `admin` tag override?
- purple carpets
- different tp points for different dimensions OR NOT AT ALL
- integrate with existing team system
- maybe totally different entries in `generate_carpets.py` for different carpet's destinations?
    - (this would let us make each carpet's destination dimenion also show a different title)
    - E.G. in overworld, white carpet would show "Teleporting to: *spawn*" but in end "Teleporting to: *end portal*"
    - SUPER simple to do, just add more entries to python script.
    - disadvantage is it wouldn't be configurable from within the mc world
- if `pvp` team is implemented then red/action needs to be updated
- fix 2 not being able to be on a carpet at the same time
- red/green should say "waiting for player ON RED" and "waiting for player ON GREEN"
- header comments in EVERY file CODE TOO
- generate_carpets.py should delete folders first then generate them
- fix template files coming up in the server log
- red/action needs all team colours
- should be able to continue recieving players even after one has already been recieved
- test leaving red/green carpets early
- if someone is already on a red carpet prevent anyone else from entering one
- put countdown stuff into its own folder
- tags for colour/subtitle, colour/entering, colour/leaving
- red/green carpets should have a cooldowns
- opted for `registriies` instead of tags so we have less conditions and fuctions overall
    - no need for each carpet's 'entry' function
- script for generating home AND white, yellow and blue mcfunctions
    - template needs comments and header

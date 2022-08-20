# Better Carpets Manual

So you want to use these better carpets? Awesome! It was made with the goal of being as simple and straight forward to setup.

Once you've put this datapack in your datapacks folder, head on over to your minecraft world. There are two categories of command blocks that you need to create now, _Server Carpets_ and _Home Carpets_

## Server carpets

These server carpets include the **white**, **yellow**, **purple** and **magenta** carpets. Don't worry, all the logic for which will TP you to where depending on your team has already been handled for you; all that needs to be done is to create 6 command blocks, one for each of the server destinations. The command looks like this:

```mcfunction
execute as @a[tag=<tag>] in <dimension> run tp @s <coords>
```

Where **<dimension>** is the dimension of the destination (the options are `overworld`, `the_nether` and `the_end`), **<coords>** is the coordinate of the destination and **<tag>** is one of the following:
1. `bc_to_wilderness`
2. `bc_to_central`
3. `bc_to_nether_hub`
4. `bc_to_end_portal`
5. `bc_to_border`
6. `bc_to_admin` (the command control room)
7. `bc_to_119` (1.19 spawn)

For example, here is the command responsible for setting the location of the central spawn:

```mcfunction
execute as @a[tag=bc_to_central] in overworld run tp @s 0 64 0
```

## Home carpets

For a player to be able to have a home carpet they first need to have the corresponding permission tag in the form of `bc_HOME_<colour>`, meaning the options are any of the following 9 different colours:
- `bc_HOME_PINK`
- `bc_HOME_BLUE`
- `bc_HOME_LIGHT_BLUE`
- `bc_HOME_GRAY`
- `bc_HOME_LIGHT_GRAY`
- `bc_HOME_CYAN`
- `bc_HOME_BROWN`
- `bc_HOME_BLACK`

They also need a corresponding command block to teleport them to their home, the command for which is:

```mcfunction
execute as @a[tag=bc_to_home] as @s[name=<name>] in overworld run tp @s <coords>
```

Where **<name>** is the name of the player and **<coords>** is the coordinates of their home. Note that this command is colour-independent, meaning if the player wishes to change their carpet colour only the permission tag needs to be updated.

For example, here is the command for teleporting _Gurtrude Belle_ to their mushroom house at spawn (given that they already have a `bc_HOME_BLACK` tag):

```mcfunction
execute as @a[tag=bc_to_home] as @s[name=Xx_gurtrude_belle_xX] in overworld run tp @s -11 66 20
```

## Extra tips & tricks

### Multiple home carpets

It's possible for a single player to have 2 or more different home carpets by specifying the colour of the carpet in the command as such (additionally, the player would need to have multiple `bc_HOME_<colour>` permission tags):

```mcfunction
execute as @a[tag=bc_to_home,tag=bc_from_black] as ...
```

### Home carpet types

Home carpets will by default display "teleporting to: home" to the player, which for a player with multiple home carpets can get confusing. However this can now be changed by giving the player a special tag of the form `bc_HOME_<color>_TYPE_<type>`, where **<color>** is the colour of the carpet and **<type>** is one of the following:

- `FARM` which displays "farm"
- `BASE` which displays "base"
- `PROJECT` which displays "project"
- `HOME2` which displays "home 2"

So for example, if Gurtrude has a pink carpet to her sugarcane farm she could have the `bc_HOME_PINK_TYPE_FARM` tag and the carpet would display "teleporting to: farm" when she stepped on pink!

### Cheaty admin teleportation

Because come on, what admin _doesn't_ like teleporting around? better_carpets makes this bad habbit easier than ever by providing you with a set of functions that an admin can run from chat and be teleported to some key locations around the map, no carpet required.

The commands follow the format of:

```mcfunction
function to:<destination>
```

where **<destination>** can be any one of the following:

- `admin`
- `border`
- `central`
- `end_portal`
- `home`
- `nether_hub`
- `wilderness`
- `119`

So as an admin, getting to the end has never been easier, it's just one command away:

```mcfunction
function to:end_portal
```

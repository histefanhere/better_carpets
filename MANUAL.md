# Setup

So you want to use these better carpets? Awesome! It was made with the goal of being as simple and straight forward to setup.

Once you've put this datapack in your datapacks folder, head on over to your minecraft world. There are two categories of command blocks that you need to create now, _Server Carpets_ and _Home Carpets_

## 1. Server Carpets

These server carpets include the **white**, **yellow** and **purple** carpets. Don't worry, all the logic for which will TP you to where depending on your team has already been handled for you; all that needs to be done is to create 6 command blocks, one for each of the server destinations. The command looks like this:

```mcfunction
execute as @a[tag=TAG] in DIMENSION run tp @s COORDS
```

Where **DIMENSION** is the dimension of the destination (the options are `overworld`, `the_nether` and `the_end`), **COORDS** is the coordinate of the destination and **TAG** is one of the following:
1. `bc_to_wilderness`
2. `bc_to_central`
3. `bc_to_nether_hub`
4. `bc_to_end_portal`
5. `bc_to_border`
6. `bc_to_admin` (the command control room)

For example, here is the command responsible for setting the location of the central spawn:

```mcfunction
execute as @a[tag=bc_to_central] in overworld run tp @s 0 64 0
```

## 2. Home Carpets

For a player to be able to have a home carpet they first need to have the corresponding permission tag in the form of `bc_HOME_COLOUR`, meaning the options are any of the following 9 different colours:
- `bc_HOME_PINK`
- `bc_HOME_BLUE`
- `bc_HOME_MAGENTA`
- `bc_HOME_LIGHT_BLUE`
- `bc_HOME_GRAY`
- `bc_HOME_LIGHT_GRAY`
- `bc_HOME_CYAN`
- `bc_HOME_BROWN`
- `bc_HOME_BLACK`

They also need a corresponding command block to teleport them to their home, the command for which is:

```mcfunction
execute as @a[tag=bc_to_home] as @s[name=NAME] in overworld run tp @s COORDS
```

Where **NAME** is the name of the player and **COORDS** is the coordinates of their home. Note that this command is colour-independent, meaning if the player wishes to change their carpet colour only the permission tag needs to be updated.

For example, here is the command for teleporting _Gurtrude Belle_ to their mushroom house at spawn (given that they already have a `bc_HOME_BLACK` tag):

```mcfunction
execute as @a[tag=bc_to_home] as @s[name=Xx_gurtrude_belle_xX] in overworld run tp @s -11 66 20
```

## Advanced Notes

It's possible for a single player to have 2 different home carpets by specifying the colour of the carpet in the command as such (additionally, the player would need to have multiple `bc_HOME_COLOUR` permission tags):

```mcfunction
execute as @a[tag=bc_to_home,tag=bc_from_black] as ...
```

Specifying the carpet colour in the command for a single-homed player is unnecessary.

# Usage

Here are some neat tricks and tips that better_carpets provides, some for the average joe player and some specifically for admins.

## Cheaty Admin Teleportation

Because come on, what admin _doesn't_ like teleporting around? better_carpets makes this bad habbit easier than ever by providing you with a set of functions that an admin can run from chat and be teleported to some key locations around the map, no carpet required.

The commands follow the format of:

```mcfunction
function to:DESTINATION
```

where **DESTINATION** can be any one of the following:

- `admin`
- `border`
- `central`
- `end_portal`
- `home`
- `nether_hub`
- `wilderness`

So as an admin, getting to the end has never been easier, it's just one command away:

```mcfunction
function to:end_portal
```
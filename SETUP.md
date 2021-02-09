# Setting up

So you want to use these better carpets? Awesome! It was made with the goal of being as simple and straight forward to setup.

Once you've put this datapack in your datapacks folder, head on over to your minecraft world. There are two categories of command blocks that you need to create now:

## 1. Server Carpets

These carpets include the **white**, **yellow** and **purple** carpets. Don't worry, all the logic for which will TP you to where depending on your team has already been handled for you; all that needs to be done is to create 5 command blocks, one for each of the server destinations. The command looks like this:

```mcfunction
execute as @a[tag=TAG] in DIMENSION run tp @s COORDS
```

where **DIMENSION** is the dimension of the destination (the options are `overworld`, `the_nether` and `the_end`), **COORDS** is the coordinate of the destination and **TAG** is one of the following:
1. `bc_to_wilderness`
2. `bc_to_central`
3. `bc_to_nether_hub`
4. `bc_to_end_portal`
5. `bc_to_border`
6. `bc_to_admin` (the command control room)

So for example, here is the command responsible for setting the location of the central spawn:

```mcfunction
execute as @a[tag=bc_to_central] in overworld run tp @s 0 64 0
```

## 2. Home Carpets

For a player to be able to have a home carpet they first need to have the corresponding permission tag in the form of `bc_HOME_COLOUR`, so the options are:
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
execute as @a[tag=bc_to_home,tag=bc_from_blue] as @s[name=NAME] in overworld run tp @s COORDS
```

where **NAME** is the name of the player and **COORDS** is the coordinates of their home. Note that this command is colour-independant, meaning if the player wishes to change their carpet colour only the permission tag needs to be changed.

So for example, here is the command for teleporting Gurtrude Belle to their mushroom house (given that they already have the `bc_HOME_BLACK` tag):

```mcfunction
execute as @a[tag=bc_to_home] as @s[name=Xx_gurtrude_belle_xX] in overworld run tp @s -11 66 20
```

## Advanced Notes

It's possible for a single player to have 2 different home carpets by specifying the colour of the carpet in the command (additionally, the player would need to have multiple `bc_HOME` permission tags) as such:

```mcfunction
execute as @a[tag=bc_to_home,tag=bc_from_black] as ...
```

But specifying the carpet colour in the command for a single-homed player is unnecessary.
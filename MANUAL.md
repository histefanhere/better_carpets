# Better Carpets Manual

So you want to use these better carpets? Awesome! It was made with the goal of being as simple and straight forward to setup.

Once you've put this datapack in your datapacks folder, head on over to your minecraft world. There are two categories of command blocks that you need to create now, _Server Carpets_ and _Home Carpets_

## Server carpets

These server carpets include the **white**, **yellow**, and **purple** carpets. Don't worry, all the logic for which will TP you to where depending on your team has already been handled for you; all that needs to be done is to create 6 command blocks, one for each of the server destinations. The command looks like this:

```mcfunction
execute as @a[tag=<tag>] in <dimension> run tp @s <coords>
```

Where **\<dimension\>** is the dimension of the destination (the options are `overworld`, `the_nether` and `the_end`), **\<coords\>** is the coordinate of the destination and **\<tag\>** is one of the following:
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

## Home carpets

Home carpets allow players to have custom warp destinations that they can teleport to using carpets. Currently, there are 8 different colours of carpets that can be used for this purpose: **magenta**, **pink**, **blue**, **light blue**, **gray**, **light gray**, **cyan**, **brown**, and **black**. 

**The process for creating home carpets is a little more involved than server carpets, so to simplify the process you can use this online tool to generate the command blocks for you: https://histefanhere.github.io/better_carpets/. Just follow the instructions and create the necessary command blocks.**

## Extra tips & tricks

There's more to this datapack than what's at the surface, so here's a few extra things you can do with it.

### Teleporting speed

By default, a teleportation takes 27 ticks to complete. If you're a pro user and want it to be faster, or you like looking at progress bars and want it to be slower, you can execute the following commmand:

```mcfunction
function bc:options/speed/<speed>
```

Where **\<speed\>** is one of the following:
- `slow` (36 ticks)
- `normal` (27 ticks)
- `fast` (18 ticks)
- `faster` (9 ticks)
- `instant` (0 ticks)

If you wish to run these from a command block, you can use the following command:

```mcfunction
execute as @p run function bc:options/speed/<speed>
```

### Cheaty admin teleportation

Because come on, what admin _doesn't_ like teleporting around? better_carpets makes this bad habbit easier than ever by providing you with a set of functions that an admin can run from chat and be teleported to some key locations around the map, no carpet required.

The commands follow the format of:

```mcfunction
function to:<destination>
```

where **\<destination\>** can be any one of the following:

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

### Manual home carpets

For a player to be able to have a home carpet they first need to have the corresponding permission tag in the form of `bc_HOME_<colour>`, meaning the options are any of the following 9 different colours:
- `bc_HOME_MAGENTA`
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

Where **\<name\>** is the name of the player and **\<coords\>** is the coordinates of their home. Note that this command is colour-independent, meaning if the player wishes to change their carpet colour only the permission tag needs to be updated.

For example, here is the command for teleporting _Gurtrude Belle_ to their mushroom house at spawn (given that they already have a `bc_HOME_BLACK` tag):

```mcfunction
execute as @a[tag=bc_to_home] as @s[name=Xx_gurtrude_belle_xX] in overworld run tp @s -11 66 20
```

#### Multiple home carpets

It's possible for a single player to have 2 or more different home carpets by specifying the colour of the carpet in the command as such (additionally, the player would need to have multiple `bc_HOME_<colour>` permission tags):

```mcfunction
execute as @a[tag=bc_to_home,tag=bc_from_black] as ...
```

#### Home carpet names

Home carpets will by default display "teleporting to: home" to the player, which for a player with multiple home carpets can get confusing. However, we can customize this! It's a little confusing so bear with me. They need a command block with the following command:

```mcfunction
execute as @a[tag=bc_title_<colour>,name=<name>] run title @s subtitle [{"text":"Teleporting to: "},{"text":"<title>","bold":true,"color":"<colour code>"}]
```

Where **\<colour\>** is the colour of the carpet, **\<name\>** is the name of the player, **\<title\>** is the title of the carpet and **\<colour code\>** is taken from the 3rd column of [this list in the code corresponding to the colour code](https://github.com/histefanhere/better_carpets/blob/main/data/bc/functions/generate_carpets.py#L74-L92). Not very pretty, I know! So for example, if Gurtrude has a pink carpet to her sugarcane farm she would need the following two command blocks:

```mcfunction
execute as @a[tag=bc_to_home] as @s[name=Xx_gurtrude_belle_xX] in overworld run tp @s -11 66 20
execute as @a[tag=bc_title_pink,name=Xx_gurtrude_belle_xX] run title @s subtitle [{"text":"Teleporting to: "},{"text":"sugarcane farm","bold":true,"color":"#ed7999"}]
```

The carpet would display "teleporting to: sugarcane farm" when she stepped on pink!

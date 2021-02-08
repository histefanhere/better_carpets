#!/usr/bin/env python3

# Generate all the mcfunction command functions for all the "instant teleport" carpets.
# These carpets, if a condition is met (which is handled in registries), instantly begin teleportation of the player.
# Such carpets include the white spawn carpet, yellow wilderness carpet, and ALL home carpets.

import os, shutil

class Carpet:
    def __init__(self, name, colour, title, tag):
        self.name = name
        self.colour = colour
        self.title = title
        self.tag = tag
    
    def template(self, text):
        out = text
        out = out.replace('template_name', self.name)
        out = out.replace('template_colour', self.colour)
        out = out.replace('template_title', self.title)
        out = out.replace('template_tag_special', self.tag)
        out = out.replace('template_tag_colour', f"bc_from_{self.name}")
        return out

def main():
    for carpet in carpets:
        print(carpet.name)

        # Firstly we remove the carpets folder to clean up any residue files/folders
        if os.path.exists(carpet.name):
            shutil.rmtree(carpet.name)

        for (dirpath, dirnames, filenames) in os.walk('template'):
            destpath = dirpath.replace('template', carpet.name)

            if not os.path.exists(destpath):
                os.mkdir(destpath)

            for filename in filenames:
                # For each filename we generate a new one
                dirfile = os.path.join(dirpath, filename)
                destfile = os.path.join(destpath, filename)

                with open(dirfile, 'r') as file:
                    text = file.read()

                    with open(destfile, 'w+') as destfile:
                        destfile.write(carpet.template(text))

# Carpet(name, colour, title, tag)
# name   - name of the carpet TP
# colour - colour of the carpet
# title  - the text in the subtitle
# tag    - a unique tag given to a player when `action` runs
#          a command block in the world will listen to this

carpets = [
    Carpet('white', 'white', 'spawn', 'bc_to_central'),
    Carpet('yellow', 'yellow', 'wilderness', 'bc_to_wilderness'),
    Carpet('purple', 'dark_purple', 'home', 'bc_to_home'),

    Carpet('pink', 'light_purple', 'home', 'bc_to_home'),
    Carpet('blue', 'blue', 'home', 'bc_to_home'),
    Carpet('magenta', 'light_purple', 'home', 'bc_to_home'),
    Carpet('light_blue', 'aqua', 'home', 'bc_to_home'),
    Carpet('gray', 'dark_gray', 'home', 'bc_to_home'),
    Carpet('light_gray', 'gray', 'home', 'bc_to_home'),
    Carpet('cyan', 'dark_aqua', 'home', 'bc_to_home'),
    Carpet('brown', '#784726', 'home', 'bc_to_home'),
    Carpet('black', '#2e2e2e', 'home', 'bc_to_home'),
]

if __name__ == "__main__":
    main()
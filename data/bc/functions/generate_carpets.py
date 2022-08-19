#!/usr/bin/env python3

# Generate all the mcfunction command functions for all the "instant teleport" carpets.
# These carpets, if a condition is met (which is handled in registries), instantly begin teleportation of the player.
# Such carpets include the white spawn carpet, yellow wilderness carpet, and ALL home carpets.

# While developing I noticed that literally all these carpets are identicaly in funcitonality
# and the only difference between them was they have different permissions of who can use them.
# These perimssions are not covered in this program, they're mostly in `registries/entering`.

import os, shutil

class Carpet:
    def __init__(self, name, category, colour, title, tag):
        self.name = name
        self.category = category
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

        folder = os.path.join('carpets', carpet.category, carpet.name)

        # Firstly we remove the carpets folder to clean up any residue files/folders
        if os.path.exists(folder):
            shutil.rmtree(folder)
        os.mkdir(folder)

        for (dirpath, dirnames, filenames) in os.walk('template'):
            # destpath = os.path.join(dirpath, '..', 'carpets', carpet.category, carpet.name)
            # destpath = os.path.join('carpets', carpet.category, carpet.name)

            # Make any folders and subfolders if they don't exist yet
            # if not os.path.exists(folder):
                # os.mkdir(folder)

            for filename in filenames:
                # For each filename we generate a new one
                dirfile = os.path.join(dirpath, filename)
                destfile = os.path.join(folder, filename)

                print(dirfile, destfile)

                # Read the contents of the template file and write it to the destination file after filling in the template variables
                with open(dirfile, 'r') as file:
                    text = file.read()

                    with open(destfile, 'w+') as destfile:
                        destfile.write(carpet.template(text))

# Carpet(name, category, colour, title, tag)
# name      - name of the carpet TP
# category  - category to put the carpet in
# colour    - colour of the carpet
# title     - the text in the subtitle
# tag       - a unique tag given to a player when `action` runs
#             a command block in the world will listen to this

# NOTE: Also `bc_from_{name}` is given

carpets = [
    # Server carpets
    Carpet('yellow_wilderness',     'server',   'yellow',           'wilderness',           'bc_to_wilderness'),
    Carpet('white_spawn',           'server',   'white',            'spawn',                'bc_to_central'),
    Carpet('white_nether_hub',      'server',   'white',            'nether hub',           'bc_to_nether_hub'),
    Carpet('white_end_portal',      'server',   'white',            'end portal',           'bc_to_end_portal'),
    Carpet('white_border',          'server',   'white',            'borderlands',          'bc_to_border'),
    Carpet('purple_border',         'server',   'dark_purple',      'borderlands',          'bc_to_border'),
    Carpet('admin_brown',           'server',   '#784726',          'admin quarters',       'bc_to_admin'),
    Carpet('magenta_119',           'server',   'light_purple',     '1.19 spawn',           'bc_to_119'),

    # Home carpets
    Carpet('pink',                  'home',     '#ed7999',          'home',                 'bc_to_home'),
    Carpet('blue',                  'home',     'blue',             'home',                 'bc_to_home'),
    # Carpet('magenta', 'light_purple', 'home', 'bc_to_home'),
    Carpet('light_blue',            'home',     'aqua',             'home',                 'bc_to_home'),
    Carpet('gray',                  'home',     'dark_gray',        'home',                 'bc_to_home'),
    Carpet('light_gray',            'home',     'gray',             'home',                 'bc_to_home'),
    Carpet('cyan',                  'home',     'dark_aqua',        'home',                 'bc_to_home'),
    Carpet('brown',                 'home',     '#784726',          'home',                 'bc_to_home'),
    Carpet('black',                 'home',     '#2e2e2e',          'home',                 'bc_to_home')
]

if __name__ == "__main__":
    main()

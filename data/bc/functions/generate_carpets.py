#!/usr/bin/env python3
# Generate the very similar carpets:

import os

class Carpet:
    def __init__(self, name, colour, title, tag):
        self.name = name
        self.colour = colour
        self.title = title
        self.tag = tag
    
    def template(self, text):
        out = text
        out = out.replace('%NAME%', self.name)
        out = out.replace('%COLOUR%', self.colour)
        out = out.replace('%TITLE%', self.title)
        out = out.replace('%TAG%', self.tag)
        return out

def main():
    for carpet in carpets:
        print(carpet.name)

        # REMOVE FIRSTFFFFFFFFF

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
    # Carpet('black', 'black', 'home', 'bc_to_home'),
    Carpet('black', '#2e2e2e', 'home', 'bc_to_home'),
]

if __name__ == "__main__":
    main()
#!/usr/bin/env python3

MAX = 3 * 3

# square = '■'
square = '.'
template = 'execute if score @s carpet_countdown matches NUMBER run title @s title [{"text":"FILLED","color":"COLOUR"},{"text":"EMPTY","color":"gray"}]'

# template = 'execute if score @s carpet_countdown matches NUMBER run title @s title [{"text":"FILLED","color":"COLOUR"},{"text":"EMPTY","color":"gray"}]'
# def get_colour(i):
#     # Given the amount of boxes filled, return what the colour should be
#     if i <= 3:
#         return 'red'
#     elif i <= 6:
#         return 'gold'
#     else:
#         return 'green'
# 
# for i in range(1, MAX + 1):
#     t = template
#     t = t.replace( 'NUMBER',  str( (i - 1) * 3)         )
#     t = t.replace( 'FILLED',  square * i          )
#     t = t.replace( 'COLOUR',  get_colour(i)       )
#     t = t.replace( 'EMPTY',   square * (MAX - i)  )
# 
#     print(t)

def get_component(quantity, colour):
    return '{"text":"TXT","color":"CLR"}'.replace('TXT', square * quantity).replace('CLR', colour)

colours = ['red', 'gold', 'green']

for i in range(1, MAX + 1):

    o = 'execute if score @s carpet_countdown matches {NUMBER} run title @s title [{COMPONENTS}]'
    components = []

    empty_squares = MAX
    threes = i // 3
    remaining = i % 3

    cur_colour = 0

    for colour in colours[:threes]:
        cur_colour += 1
        empty_squares -= 3
        component = get_component(3, colour)
        components.append(component)

    if remaining:
        empty_squares -= remaining
        components.append( get_component(remaining, colours[cur_colour]) )

    components.append( get_component(empty_squares, 'gray') )


    o = o.replace( '{NUMBER}',  str( (i - 1) * 3)         )
    o = o.replace( '{COMPONENTS}', ','.join(components) )

    print(o)

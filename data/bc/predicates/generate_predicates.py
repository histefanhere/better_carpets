#!/usr/bin/env python3

def main():
    for colour in colours:
        filename = f"on_{colour}.json"
        t = template.replace('COLOUR', colour)

        with open(filename, 'w+') as file:
            file.write(t)


template = '''[
  {
    "condition": "minecraft:inverted",
    "term": {
      "condition": "minecraft:location_check",
      "offsetX": 0,
      "offsetY": 0,
      "offsetZ": -1,
      "predicate": {
        "block": {
          "blocks": [
            "minecraft:COLOUR_carpet"
          ]
        }
      }
    }
  },
  {
    "condition": "minecraft:inverted",
    "term": {
      "condition": "minecraft:location_check",
      "offsetX": 0,
      "offsetY": 0,
      "offsetZ": 1,
      "predicate": {
        "block": {
          "blocks": [
            "minecraft:COLOUR_carpet"
          ]
        }
      }
    }
  },
  {
    "condition": "minecraft:inverted",
    "term": {
      "condition": "minecraft:location_check",
      "offsetX": -1,
      "offsetY": 0,
      "offsetZ": 0,
      "predicate": {
        "block": {
          "blocks": [
            "minecraft:COLOUR_carpet"
          ]
        }
      }
    }
  },
  {
    "condition": "minecraft:inverted",
    "term": {
      "condition": "minecraft:location_check",
      "offsetX": 1,
      "offsetY": 0,
      "offsetZ": 0,
      "predicate": {
        "block": {
          "blocks": [
            "minecraft:COLOUR_carpet"
          ]
        }
      }
    }
  },
  {
    "condition": "minecraft:location_check",
    "offsetX": 0,
    "offsetY": 0,
    "offsetZ": 0,
    "predicate": {
      "block": {
        "blocks": [
          "minecraft:COLOUR_carpet"
        ]
      }
    }
  }
]'''

colours = [
        'white',
        'orange',
        'magenta',
        'light_blue',
        'yellow',
        'lime',
        'pink',
        'gray',
        'light_gray',
        'cyan',
        'purple',
        'blue',
        'brown',
        'green',
        'red',
        'black'
]

if __name__ == "__main__":
    main()

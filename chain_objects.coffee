#!/usr/bin/env coffee
#
# http://coffeescriptcookbook.com/chapters/classes_and_objects/chaining
#

class CoffeeCup
  constructor: ->
    @properties = 
      strength: 'medium'
      cream: false 
      sugar: false
  strength: (newStrength) ->
    @properties.strength = newStrength
    this
  cream: (newCream) -> 
    @properties.cream = newCream
    this
  sugar: (newSugar) -> 
    @properties.sugar = newSugar
    this

# Create an Object named morningCup, that is using the CoffeeCup class.
morningCup = new CoffeeCup()

morningCup.properties #=> [ strength: 'medium', cream: false, sugar: false ]

eveningCup = new CoffeeCup().strength('dark').cream(true).sugar(true)

eveningCup.properties #=> [ strength: 'dark', cream: true, sugar: true ]


require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

require 'pry'
require_relative '../app/models/ingredient'
require_relative '../app/models/recipe.rb'
require_relative '../app/models/quantity'

croquemadame = Recipe.new("Croque Madame", "French")
burrito = Recipe.new("Bean Burrito", "Mexican")

bread = Ingredient.new("Bread", "Bread & Wraps")
egg = Ingredient.new("Egg(s)", "Eggs & Dairy")
ham = Ingredient.new("Ham", "Meat")
emmental = Ingredient.new("Emmental", "Cheese")
butter = Ingredient.new("Butter", "Eggs & Dairy")
salt = Ingredient.new("Salt", "Seasoning")
pepper = Ingredient.new("Pepper", "Seasoning")

tortilla = Ingredient.new("Tortilla", "Bread & Wraps" )
blackbeans = Ingredient.new("Black Beans", "Beans")
cheddar = Ingredient.new("Cheddar Cheese", "Cheese")
tacoseasoning = Ingredient.new("Taco Seasoning", "Seasoning")
jalapeno = Ingredient.new("Jalapeno")

croquemadame.add_ingredient(2, "Slices", bread)
croquemadame.add_ingredient(1, "Count", egg)
croquemadame.add_ingredient(1, "Piece", ham)
croquemadame.add_ingredient(1, "Slice", emmental)
croquemadame.add_ingredient(1, "Tablespoon", butter)
croquemadame.add_ingredient(1, "Dash", salt)
croquemadame.add_ingredient(1, "Dash", pepper)



Recipe.all.each {|recipe| puts recipe.name}


puts croquemadame.quantities
puts croquemadame.ingredients
puts Quantity.all
# puts croquemadame.ingredients





binding.pry
0 #leave this here to ensure binding.pry isn't the last line

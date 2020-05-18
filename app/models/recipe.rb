require 'pry'
require_relative 'ingredient.rb'
require_relative 'quantity.rb'

class Recipe

   attr_reader :name, :cuisine

   @@all = []

   def initialize(name, cuisine)
      @name = name
      @cuisine = cuisine
      @@all << self
   end

   def self.all
      @@all
   end

   def add_ingredient(quantity, measurement, ingredient)
      Quantity.new(quantity, measurement, ingredient, self)
   end

   def quantities
      Quantity.all.select { |quantity| quantity.recipe == self }
   end

   def ingredients
      self.quantities.map { |quantity| quantity.ingredient }
   end

   def self.cuisines
      self.all { |recipe| recipe.cuisine }
   end


end

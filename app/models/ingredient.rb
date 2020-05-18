require 'pry'
require_relative 'recipe.rb'
require_relative 'quantity.rb'

class Ingredient

   attr_reader :name, :type

   @@all = []

   def initialize(name, type)
      @name = name
      @type = type
      @@all << self
   end

   def self.all
      @@all
   end

   def buy(quantity, measurement, recipe)
      Quantity.new(quantity, measurement, self, recipe)
   end

   def quantities
      Quantity.all.select { |quantity| quantity.ingredient == self }
   end

   def recipes
      self.quantities.map { |quantity| quantity.recipe }
   end

   


end

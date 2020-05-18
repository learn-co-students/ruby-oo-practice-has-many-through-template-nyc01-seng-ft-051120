require 'pry'
require_relative 'ingredient.rb'
require_relative 'recipe.rb'

class Quantity
   
   attr_accessor :amount, :measurement
   attr_reader :recipe, :ingredient

   @@all = []

   def initialize(amount, measurement, ingredient, recipe)
      @amount = amount
      @measurement = measurement
      @ingredient = ingredient
      @recipe = recipe
      @@all << self
   end

   def self.all
      @@all
   end


   # def self.check_pantry(a, ingredient)
   #    count = 0
   #    @@all.each do |quantity|
   #       if quantity.amount
   #    end
   # end   







end

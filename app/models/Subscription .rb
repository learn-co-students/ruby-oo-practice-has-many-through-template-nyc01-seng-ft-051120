#class for Model3 goes here
#Feel free to change the name of the class
class Subscription 
    
    @all = []
    attr_accessor :cost,:magazine,:person

    def initialize(cost,magazine,person)
        @cost = cost
        @magazine = magazine
        @person = person 
    end
  
end

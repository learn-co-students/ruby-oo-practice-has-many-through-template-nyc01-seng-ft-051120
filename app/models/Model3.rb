#class for Model3 goes here
#Feel free to change the name of the class
class Subscriber
    @@all=[]
    attr_accessor :name, :age
    def initialize(name, age)
        @name=name
        @age=age
        @@all << self
    end

    def self.all
        @@all
    end

  
end

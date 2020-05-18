#class for Model2 goes here
#Feel free to change the name of the class
class Subscription
    @@all=[]
    attr_accessor :subscriber, :magazine, :sub_price, :sub_duration
    def initialize(subscriber, magazine, sub_price, sub_duration=12)
        @sub_duration=sub_duration
        @sub_price=sub_price
        @subscriber=subscriber
        @magazine=magazine
        @@all << self
    end
    
     def self.all
        @@all
     end

end

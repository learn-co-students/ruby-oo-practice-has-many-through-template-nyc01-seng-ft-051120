#class for Model2 goes here
#Feel free to change the name of the class
class Person

    @@all  = []
    attr_accessor :name 

    def initialize (name)
        @name = name 
        Person.all << self
    end


    def self.all 
        @@all
    end 

    def subscribe_to_magazine(name,cost = 0)
        magazine = Magazine.find_magazine_by_name (name)
        if magazine
            Magazine.new (cost,magazine,self)
        else
            puts "There is no magazine with that name."
        end
    end
    
    def get_all_subscriptions
        Subscription.all.select{|x| x.person == self}
    end

    def see_all_subscribe_magazine
        self.get_all_subscriptions.each{|x| puts x.magazine.name}
    end
end

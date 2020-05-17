#class for Model1 goes here
#Feel free to change the name of the class
class Magazine 

    @@all  = []
    attr_accessor :name,:type 

    def initialize (name,type)
        @name = name 
        @type = type 
        Magazine.all << self
    end


    def self.all 
        @@all
    end 

    def self.find_magazine_by_name (name)
        Self.all.find{|x| x.name = name }
    end

    def get_all_subscriptions
        Subscription.all.select{|x| x.magazine == self}
    end

    def see_all_subscriptors
        self.get_all_subscriptions.each{|x| puts x.person.name}
    end
end

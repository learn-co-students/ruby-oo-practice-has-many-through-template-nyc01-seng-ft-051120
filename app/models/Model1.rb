#class for Model1 goes here
#Feel free to change the name of the class
require_relative './Model3.rb'
class Magazine
    @@all=[]
    attr_accessor :name, :price, :publisher, :publishing_cycle
    def initialize(name, publisher, publishing_cycle="Monthly")
        @name=name
        @price=price
        @publishing_cycle=publishing_cycle
        @publisher=publisher
        @@all << self
    end
    def self.all
        @@all
    end
    def subs
        s=[]
        Subscription.all.each do |subs|
            if subs.magazine==self
                s << subs.subscriber.name
            end
        end
        s
    end


end

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#magazine list
gm1=Magazine.new("Times", "Times", "monthly")
gm2=Magazine.new("Forbes", "Forbes", "weekly")
gm3=Magazine.new("Men", "mon.inc", "monthly")
gm4=Magazine.new("MIT Tech Review", "MIT", )
gm5=Magazine.new("Women", "beauties inc.", )
gm6=Magazine.new("National Bio", "NatGeo", )
gm7=Magazine.new("National Science", "NatGeo", "yearly")
gm8=Magazine.new("National Pol",  "NatGeo", "monthly")
gm9=Magazine.new("Me!","Me inc.", "daily")
gm0=Magazine.new("Fitness","Garlio Fitness", "biweekly")

#subscriber list
sub1= Subscriber.new("tsering", 24)
sub2= Subscriber.new("Dany", 34)
sub3= Subscriber.new("Anthony", 54)
sub5= Subscriber.new("Bob", 12)
sub6= Subscriber.new("Alice", 21)
sub7= Subscriber.new("George", 26)
sub8= Subscriber.new("Mike" ,46)
sub9= Subscriber.new("Billy", 74)
sub0= Subscriber.new("Joyce", 14)

#subscription list
s1=Subscription.new(sub1, gm1, 28 ,12)
s2=Subscription.new(sub3, gm9, 38, 6)
s3=Subscription.new(sub5, gm8, 48, 24)
s4=Subscription.new(sub6, gm9, 22 ,48)
s5=Subscription.new(sub1, gm2, 28 , 36)
s6=Subscription.new(sub1, gm0, 80)
s7=Subscription.new(sub2, gm4, 21)
s18=Subscription.new(sub3, gm3, 21)
s8=Subscription.new(sub0, gm2, 21)
v91=Subscription.new(sub1, gm5, 21)
s0=Subscription.new(sub2, gm1, 23)
vxvs1=Subscription.new(sub1, gm9, 20)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

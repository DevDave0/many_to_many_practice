require_relative '../config/environment.rb'

# create your variables and/or write any tests here

# binding.pry


zara = Tourist.new('zara') 
david = Tourist.new('david') 
diego = Tourist.new('diego') 
paul = Tourist.new('paul') 
shannon = Tourist.new('shannon') 

monument = Landmark.new('monument','DC')
bean = Landmark.new('bean','chicago')
needle = Landmark.new('space needle','seattle')

trip1 = Trip.new(zara,monument)
trip2 = Trip.new(david,monument)
trip3 = Trip.new(diego,monument)
trip4 = Trip.new(paul,bean)
trip5 = Trip.new(shannon,needle)
trip6 = Trip.new(zara,needle)
trip7 = Trip.new(diego,bean)

# puts Tourist.find_by_name('diego')
puts zara.trips





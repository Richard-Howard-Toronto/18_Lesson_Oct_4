#Create a Location class with a name.  Create a Trip class with an array of Location instances (called stops or destinations or something similar). Define a method that lets you add locations to the trip's list of destinations. Make several instances of Locations and add them to an instance of Trip. Define a method in the Trip class that iterates through the list of locations and prints something similar to the following:

# "Began trip."
# "Travelled from Toronto to Ottawa."
# "Travelled from Ottawa to Montreal."
# "Travelled from Montreal to Quebec City."
# "Travelled from Quebec City to Halifax."
# "Travelled from Halifax to St. John's."
# "Ended trip."
require 'pry'

  class Location

    def initialize (name, population)
      @name = name
      @population = population
    end

    def name
      @name
    end

  end


  class Trip

    def initialize
      @locations = []
    end

    def add_location (n1,n2,n3)
      @locations << n1
      @locations << n2
      @locations << n3
    end

    def iterate_trips
      puts "trip begins"
      @locations.each_cons(2) do |x,y|
        puts "trip is from #{x.name} to #{y.name}"
    end
    puts "trip ends"
  end

  class Car

    def initialize
      @cars = []
    end
  end

end

#I am creating objects, in this case cities.  I instantiate the [?] by running a Ruby method, "new" on the class Object "Location", and I pass into the class object Location values: 'toronto', '123', 'Halifax,'123' ... To keep track of what I am passing in, I have to create variables (@instance variables), which I have called Name and Population.  When I am done, I have a variable called 'toronto1'.  It holds two values, 'Toronto' and '123'.  Later, when I ask 'toronto1' "what do you have" it will return, "I have a name called Toronto and a population called 123".


    toronto1 = Location.new('Toronto',123)
    halifax1 = Location.new('Halifax',324)
    quebec1 = Location.new('Quebec',324)
    edmonton1 = Location.new('Edmonton',324)
    dartmouth1 = Location.new('Dartmouth',324)
    brookville1 = Location.new('Brookville',9884)

#I am creating a new object, of the class TRIP.  It is initalize with an instance variable called location.  I am going to store the arguments of the instance variable called location.  The arguments are things that I can change,and I can change the arguments values.

#in other words...

#when I instantiate a new object [?] as I did above, it creates an object with @location.

#@location has two arguments, name and population.
#@location, the instance variable, has two arguments and I can pass values to these arguments using the add_location method.  I could have called add_location, add_values_to_the_arguments.

puts "------------------------------"
puts "trip1 and trip2 output is"
p trip1 = Trip.new
p trip2 = Trip.new


#I am saying, "hey object - 'trip1' , I am going to do something to you, and in this case it is a method called add_location.  If you look at the method, Mr. Object, I am going to pass to you - you being an  object - the arguments. and each one has to have a value.  I can make as many objects as I want: trip1, trip2, trip3 ... etc."


# HERE IS THE KEY POINT OF CONFUSION FOR ME. I THINK.

#I made an object called toronto1, which holds 'Toronto' and '123'.  I am now passing in the object 'toronto1' to trip1, a new object, which I instantiates with trip1=Trip.new.  I do this with a method called 'add_location'.

puts "------------------------------"
puts "the value of the @location after running method add_location"

p   trip1.add_location(toronto1,halifax1,quebec1)
p   trip2.add_location(brookville1,quebec1,edmonton1)

#SO, now what do we have:

#inside the class Location
  #we have two instance variables and they have values.
#inside the class Trip
  #we have the @locations=[], which is holding the 'toronto1','quebec1','halifax1'...
  #inside toronto1 we have @name = Toronto, @population = 123

#we now call the method iterate_trips.

#We call it on the object trip1. The object has '@location = []' and inside the [] we have @name and @population.

#iterate_trips says, "go into the location object, find the @name, find the value of @name, and print it"

    trip1.iterate_trips
    trip2.iterate_trips

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

    def initialize (name , population)
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

    def add_location (name,n2,n3)
      @locations << name
      @locations << n2
      @locations << n3
    end

    def iterate
      @locations.each_cons(2) do |x,y|
        puts "trip is #{x.name} and #{y.name}"
      end
    end

  end


    toronto = Location.new('Toronto',123)
    halifax = Location.new('Halifax',324)
    quebec = Location.new('Quebec',324)
    edmonton = Location.new('Edmonton',324)
    dartmouth = Location.new('Dartmout',324)


    trip1 = Trip.new
    trip2 = Trip.new

    trip1.add_location(toronto,halifax,quebec)
    trip2.add_location(toronto,quebec,edmonton)

    trip1.iterate
    trip2.iterate

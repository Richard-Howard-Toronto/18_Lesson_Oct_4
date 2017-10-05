#Create a Location class with a name.  Create a Trip class with an array of Location instances (called stops or destinations or something similar). Define a method that lets you add locations to the trip's list of destinations. Make several instances of Locations and add them to an instance of Trip. Define a method in the Trip class that iterates through the list of locations and prints something similar to the following:

# "Began trip."
# "Travelled from Toronto to Ottawa."
# "Travelled from Ottawa to Montreal."
# "Travelled from Montreal to Quebec City."
# "Travelled from Quebec City to Halifax."
# "Travelled from Halifax to St. John's."
# "Ended trip."



(1..10).each_cons(3) { |a| p a }
# outputs below
[1, 2, 3]
[2, 3, 4]
[3, 4, 5]
[4, 5, 6]
[5, 6, 7]
[6, 7, 8]
[7, 8, 9]
[8, 9, 10]

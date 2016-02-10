#populate the MBTA lines
red_line = ["Alewife", "Davis", "Porter", "Harvard", "Central", "Kendall/MIT", "Park Street", "South Station"]

green_line = ["Haymarket", "Government Center", "Park Street", "Boylston", "Arlington", "Copley"]

orange_line = ["North Station", "Haymarket", "Park Street", "State Street", "Downtown Crossing", "Chinatown", "Tufts Medical Center"]

# populate the hash
mbta = {}
mbta["red"] = red_line
mbta["green"] = green_line
mbta["orange"] = orange_line

# Get the user's origin line
puts "Welcome to the MBTA!"
print "What line do you want to start on? red | orange | green: "
origin_line = gets.chomp!.downcase


# Get the user's origin station
# Simplified station selector
print "What station do you want to get on on the #{origin_line} line? "
origin_stop = gets.chomp!.downcase
origin_line.to_sym
originArray = mbta[origin_line]

#Get the user's destination station
print "What line do you want to end on? red | orange | green: "
destination_line = gets.chomp!.downcase


# Get the users' destination stop
print "What station do you want to get on on the #{destination_line} line? "
destination_stop = gets.chomp!.downcase

destination_line.to_sym
destinationArray = mbta[destination_line]
#puts "This is your itinerary:"
#puts "You're taking the #{origin_line} line from #{origin_stop} to #{destination_stop} on the #{destination_line} line."

# Figuring out the distance
# if same line, count distance between stops

if origin_line == destination_line
  count_stops = (originArray.index(origin_stop) - destinationArray.index(destination_stop)).abs
  #puts "You have to go #{count_stops} stops on the #{origin_line}"
else count_stops = (originArray.index(origin_stop) - originArray.index("Park Street"))
  count_stops += (destinationArray.index(destination_stop) - destinationArray.index("Park Street")).abs
end
puts "To go from #{origin_stop} on the #{origin_line} line to #{destination_stop} on the #{destination_line} line will take #{count_stops}"

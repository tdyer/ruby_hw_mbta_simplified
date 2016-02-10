#populate the MBTA lines
red_line = ["alewife", "davis", "porter", "harvard", "central", "kendall/mit", "park street", "south station"]

green_line = ["haymarket", "government center", "park street", "boylston", "arlington", "copley"]

orange_line = ["north station", "haymarket", "park street", "state street", "downtown crossing", "chinatown", "tufts medical center"]

# populate the hash
mbta = {}
mbta["red"] = red_line
mbta["green"] = green_line
mbta["orange"] = orange_line

# Get the user's origin line
puts "Welcome to the MBTA!"
print "What line do you want to start on? red | orange | green: "
origin_line = gets.chomp!.downcase!


# Get the user's origin station
# Simplified station selector
print "What station do you want to get on on the #{origin_line} line? "
origin_stop = gets.chomp!.downcase!
originArray = mbta[origin_line]

#Get the user's destination station
print "What line do you want to end on? red | orange | green: "
destination_line = gets.chomp!.downcase!


# Get the users' destination stop
print "What station do you want to get on on the #{destination_line} line? "
destination_stop = gets.chomp!.downcase!
destinationArray = mbta[destination_line]

# Figuring out the distance
# if same line, count distance between stops

if origin_line == destination_line
   count_stops = (originArray.index(origin_stop) - destinationArray.index(destination_stop)).abs
else
   distance = (originArray.index(origin_stop) - originArray.index("Park Street")).abs
   distance += (destinationArray.index(destination_stop) - destinationArray.index("Park Street")).abs
end
puts "To go from #{origin_stop} on the #{origin_line} line to #{destination_stop} on the #{destination_line} line will take #{count_stops}"

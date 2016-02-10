#populate the MBTA lines
red_line = ['Alewife', 'Davis', 'Porter', 'Harvard', 'Central', 'Kendall/MIT', 'Park Street', 'South Station']

green_line = ['Haymarket', 'Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley']

orange_line = ['North Station', 'Haymarket', 'Park Street', 'State Street', 'Downtown Crossing', 'Chinatown', 'Tufts Medical Center']

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
print "What station do you want to get on on the #{origin_line} line?"
origin_stop = gets.chomp!.downcase

#Get the user's destination station
print "What line do you want to end on? red | orange | green: "
destination_line = gets.chomp!.downcase

# Get the users' destination stop
print "What station do you want to get on on the #{origin_line} line?"
destination_stop = gets.chomp!.downcase

#puts "This is your itinerary:"
#puts "You're taking the #{origin_line} line from #{origin_stop} to #{destination_stop} on the #{destination_line} line."

# Figuring out the distance
# if same line, count distance between stops

if origin_line == destination_line && origin_line == 'orange' && destination_line == 'orange'
  count_stops = orange_line.index() - orange_line.index('destination_stop')
puts "You have to go #{count_stops} stops on the Orange Line"
end

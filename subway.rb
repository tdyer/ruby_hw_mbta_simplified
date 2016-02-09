#############################################################################
############################## Define T System ##############################
#############################################################################

# Populate the lines
redLine = ["alewife", "davis", "porter", "harvard", "central", "kendall/mit", "park street", "south station"]
greenLine = ["haymarket", "government center", "park street", "boylston", "arlington", "copley"]
orangeLine = ["north station", "haymarket", "park street", "state street", "downtown crossing", "chinatown", "tufts medical center"]

# Populate the hash
mbta = {}
mbta["red"] = redLine
mbta["green"] = greenLine
mbta["orange"] = orangeLine

##############################################################################
############################### Get user input ###############################
##############################################################################

# Ask for the origin line
print "Pick an origin line (red, green, orange): "
originLine = gets.chomp
originLine.downcase!

# Prevent invalid guess input
while !mbta.has_key?(originLine)
   print "That line does not exist. Please enter red, green, or orange: "
   originLine = gets.chomp
   originLine.downcase!
end

# Ask for the origin station
print "Pick an origin station on the #{originLine} line: "
originStation = gets.chomp
originStation.downcase!

#Prevent invalid guess input
originLine.to_sym
originArray = mbta[originLine]
while !originArray.include?(originStation)
   print "That station doesn't exist on this line. Please enter a station: "
   originStation = gets.chomp
   originStation.downcase!
end

# Ask for the destination line
print "Pick a destination line (red, green, orange): "
destinationLine = gets.chomp
destinationLine.downcase!

#Prevent invalid guess input
while !mbta.has_key?(destinationLine)
   print "That line does not exist. Please enter red, green, or orange: "
   destinationLine = gets.chomp
   destinationLine.downcase!
end

# Ask for the destination station
print "Pick a destination station on the #{destinationLine} line: "
destinationStation = gets.chomp
destinationStation.downcase!

#Prevent invalid guess input
destinationLine.to_sym
destinationArray = mbta[destinationLine]
while !destinationArray.include?(destinationStation)
   print "That station doesn't exist on this line. Please enter a station: "
   destinationStation = gets.chomp
   destinationStation.downcase!
end

##############################################################################
############################ Calculate the route #############################
##############################################################################

if originLine == destinationLine
   distance = (originArray.index(originStation) - destinationArray.index(destinationStation)).abs
else
   distance = (originArray.index(originStation) - originArray.index("park street")).abs
   distance += (destinationArray.index(destinationStation) - destinationArray.index("park street")).abs
end

puts "\nTraveling from #{originStation.capitalize} to #{destinationStation.capitalize} would be #{distance} stops.\n\n"


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

askingUser = true

while askingUser

   # Ask for the origin line
   print "\nPick an origin line (red, green, orange): "
   originLine = gets.chomp
   originLine.downcase!

   # Prevent invalid guess input
   while !mbta.has_key?(originLine)
      print "\nThat line does not exist. Please enter red, green, or orange: "
      originLine = gets.chomp
      originLine.downcase!
   end

   # Ask for the origin station
   print "\nPick an origin station on the #{originLine} line: "
   originStation = gets.chomp
   originStation.downcase!

   #Prevent invalid guess input
   originLine.to_sym
   originArray = mbta[originLine]
   while !originArray.include?(originStation)
      print "\nThat station doesn't exist on this line. Please enter a station: "
      originStation = gets.chomp
      originStation.downcase!
   end

   # Ask for the destination line
   print "\nPick a destination line (red, green, orange): "
   destinationLine = gets.chomp
   destinationLine.downcase!

   #Prevent invalid guess input
   while !mbta.has_key?(destinationLine)
      print "\nThat line does not exist. Please enter red, green, or orange: "
      destinationLine = gets.chomp
      destinationLine.downcase!
   end

   # Ask for the destination station
   print "\nPick a destination station on the #{destinationLine} line: "
   destinationStation = gets.chomp
   destinationStation.downcase!

   #Prevent invalid guess input
   destinationLine.to_sym
   destinationArray = mbta[destinationLine]
   while !destinationArray.include?(destinationStation)
      print "\nThat station doesn't exist on this line. Please enter a station: "
      destinationStation = gets.chomp
      destinationStation.downcase!
   end
end

##############################################################################
############################ Calculate the route #############################
##############################################################################

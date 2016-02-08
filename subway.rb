#############################################################################
############################## Define T System ##############################
#############################################################################

# Represent the entire MBTA with an array of hashes
# Properties include name, location on their given line, and line name
mbtaLines = ['red', 'green', 'orange']
mbtaStations = [
   {
      name: "alewife",
      location: 0,
      line: "red"
   },
   {
      name: "davis",
      location: 1,
      line: "red"
   },
   {
      name: "porter",
      location: 2,
      line: "red"
   },
   {
      name: "harvard",
      location: 3,
      line: "red"
   },
   {
      name: "central",
      location: 4,
      line: "red"
   },
   {
      name: "kendall/mit",
      location: 5,
      line: "red"
   },
   {
      name: "park street",
      location: 6,
      line: "red"
   },
   {
      name: "south station",
      location: 7,
      line: "red"
   },
   {
      name: "haymarket",
      location: 0,
      line: "green"
   },
   {
      name: "government center",
      location: 1,
      line: "green"
   },
   {
      name: "park street",
      location: 2,
      line: "green"
   },
   {
      name: "boylston",
      location: 3,
      line: "green"
   },
   {
      name: "arlington",
      location: 4,
      line: "green"
   },
   {
      name: "copley",
      location: 5,
      line: "green"
   },
   {
      name: "north station",
      location: 0,
      line: "orange"
   },
   {
      name: "haymarket",
      location: 1,
      line: "orange"
   },
   {
      name: "park street",
      location: 2,
      line: "orange"
   },
   {
      name: "state street",
      location: 3,
      line: "orange"
   },
   {
      name: "downtown crossing",
      location: 4,
      line: "orange"
   },
   {
      name: "chinatown",
      location: 5,
      line: "orange"
   },
   {
      name: "tufts medical center",
      location: 6,
      line: "orange"
   }
]

##############################################################################
############################# Start the program ##############################
##############################################################################
askingUser = true

while askingUser

   # Ask for the origin line
   print "\nPick an origin line (red, green, orange): "
   originLine = gets.chomp
   originLine.downcase!

   #Prevent invalid guess input
   while !mbtaLines.include?(originLine)
      print "\nThat line does not exist. Please enter red, green, or orange: "
      originLine = gets.chomp
      originLine.downcase!
   end

   # Ask for the origin station
   print "\nPick an origin station on the #{originLine} line: "
   originStation = gets.chomp
   originStation.downcase!

   #Prevent invalid guess input
   while !mbtaStations.any? { |station| station[:name] == originStation && station[:line] == originLine}
      print "\nThat station doesn't exist on this line. Please enter a station: "
      originStation = gets.chomp
      originStation.downcase!
   end

   # Ask for the destination line
   print "\nPick a destination line (red, green, orange): "
   destinationLine = gets.chomp
   destinationLine.downcase!

   #Prevent invalid guess input
   while !mbtaLines.include?(destinationLine)
      print "\nThat line does not exist. Please enter red, green, or orange: "
      destinationLine = gets.chomp
      destinationLine.downcase!
   end

   # Ask for the destination station
   print "\nPick a destination station on the #{destinationLine} line: "
   destinationStation = gets.chomp
   destinationStation.downcase!

   #Prevent invalid guess input
   while !mbtaStations.any? { |station| station[:name] == destinationStation && station[:line] == destinationLine}
      print "\nThat station doesn't exist on this line. Please enter a station: "
      destinationStation = gets.chomp
      destinationStation.downcase!
   end

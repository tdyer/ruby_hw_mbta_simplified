
#Train Lines hashes

# Park Street values equal to 0 because of intersection.

red_line = {'Alewife' => -6, 'Davis' => -5, 'Porter' => -4, 'Harvard' => -3, 'Central' => -2, 'Kendall/MIT' => -1, 'Park Street' => 0, 'South Station' => 1}


green_line = {'Haymarket' => -2, 'Government Center' => -1, 'Park Street' => 0, 'Boylston' => 1, 'Arlington' => 2, 'Copley' => 3}


orange_line = {'North Station' => -2, 'Haymarket' => -1, 'Park Street' => 0, 'State Street' => 1, 'Downtown Crossing' => 2, 'Chinatown' => 3, 'Tufts Medical Center' => 4}

puts "MTA SYSTEM - Charlie on the MTA"
puts " 

RED LINE

Alewife
Davis
Porter
Harvard
Central
Kendall/MIT
Park Street
South Station

GREEN LINE

Haymarket
Government Center
Park Street
Boylston
Arlington
Copley

ORANGE LINE

North Station
Haymarket
Park Street
State Street
Downtown Crossing
Chinatown
Tufts Medical Center

"
#Get user's destination
print "Choose your destination: "
destination = gets.chomp!.to_s
destination = red_line[destination] || green_line[destination] || orange_line[destination]

#Get user's origin
print "Where are you? : "
origin = gets.chomp!.to_s
origin = red_line[origin] || green_line[origin] || orange_line[origin]

#Number of Stops 
print "Number of Stops : " 
number_stops = origin - destination

#Fix issue with Park Street intersection being origin or destination

number_stops = number_stops.abs - 0
puts number_stops.abs






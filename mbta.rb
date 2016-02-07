red_line = ['Alewife', 'Davis', 'Porter', 'Harvard', 'Central', 'Kendall/MIT', 'Park Street', 'South Station']

green_line = ['Haymarket', 'Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley']

orange_line = ['North Station', 'Haymarket', 'Park Street', 'State Street', 'Downtown Crossing', 'Chinatown', 'Tufts Medical Center']

puts "Welcome to the MBTA!"
puts "What line do you want to start on? red | orange | green: "
origin_line = gets.chomp!.downcase.to_s

if origin_line == 'red'
  puts  "What stop are you getting on at?
  * Alewife
  * Davis
  * Porter
  * Harvard
  * Central
  * Kendall/MIT
  * Park Street
  * South Station"
elsif origin_line == 'orange'
  puts "What stop are you getting on at?
  * North Station
  * Haymarket
  * Park Street
  * State Street
  * Downtown Crossing
  * Chinatown
  * Tufts Medical Center"
elsif origin_line == 'green'
  puts "What stop are you getting on at?
  * Haymarket
  * Government Center
  * Park Street
  * Boylston
  * Arlington
  * Copley"
end
  origin_stop = gets.chomp!.downcase.to_s

puts "What line do you want to end on? red | orange | green: "
destination_line = gets.chomp!.to_s

if destination_line == 'red'
  puts  "What stop are you getting off at?
  * Alewife
  * Davis
  * Porter
  * Harvard
  * Central
  * Kendall/MIT
  * Park Street
  * South Station"
elsif destination_line == 'orange'
  puts "What stop are you getting off at?
  * North Station
  * Haymarket
  * Park Street
  * State Street
  * Downtown Crossing
  * Chinatown
  * Tufts Medical Center"
elsif destination_line == 'green'
  puts "What stop are you getting off at?
  * Haymarket
  * Government Center
  * Park Street
  * Boylston
  * Arlington
  * Copley"
end
  destination_stop = gets.chomp!.downcase.to_s

puts origin_line
puts origin_stop
puts destination_line
puts destination_stop

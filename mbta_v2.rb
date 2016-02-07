red = {'Alewife' => -6, 'Davis' => -5, 'Porter' => -4, 'Harvard' => -3, 'Central' => -2, 'Kendall/MIT' => -1, 'Park Street' => 0, 'South Station' => 1}
green = {'Haymarket' => -2, 'Government Center' => -1, 'Park Street' => 0, 'Boylston' => 1, 'Arlington' => 2, 'Copley' => 3}
orange = {'North Station' => -2, 'Haymarket' => -1, 'Park Street' => 0, 'State Street' => 1, 'Downtown Crossing' => 2, 'Chinatown' => 3, 'Tufts Medical Center' => 4}

puts "Welcome to the MBTA!"
puts "What line do you want to start on? red | orange | green: "
origin_line = gets.chomp!.to_s

if origin_line == 'red'
  puts "What stop are you getting on at? "
  red.each_key {|key| puts key}
  origin_stop = gets.chomp!.to_s
  origin_stop = red[origin_stop]
elsif origin_line == 'green'
  puts "What stop are you getting on at? "
  green.each_key {|key| puts key}
  origin_stop = gets.chomp!.to_s
  origin_stop = green[origin_stop]
elsif origin_line == 'orange'
  puts "What stop are you getting on at? "
  orange.each_key {|key| puts key}
  origin_stop = gets.chomp!.to_s
  origin_stop = orange[origin_stop]
end

puts "What line are you getting off on? red | orange | green: "
destination_line = gets.chomp!.to_s

if destination_line == 'red'
  puts "What stop are you getting on at? "
  red.each_key {|key| puts key}
  destination_stop = gets.chomp!.to_s
  destination_stop = red[destination_stop]
elsif destination_line == 'green'
  puts "What stop are you getting on at? "
  green.each_key {|key| puts key}
  destination_stop = gets.chomp!.to_s
  destination_stop = green[destination_stop]
elsif destination_line == 'orange'
  puts "What stop are you getting on at? "
  orange.each_key {|key| puts key}
  destination_stop = gets.chomp!.to_s
  destination_stop = orange[destination_stop]
end

num_stops = origin_stop - destination_stop
num_stops = num_stops.abs - 0
puts "This will take #{num_stops} stops"

MBTA = {
  red_line: [:alewife, :davis, :porter, :harvard, :central, :kendall, :park_st, :south_station],
  green_line: [:haymarket, :government_center, :park_st, :boylston, :arlington, :copley],
  orange_line: [:north_station, :haymarket, :park_st, :state_st, :downtown_crossing, :chinatown, :tufts]
}

def number_of_stops(first_line:, origin:, second_line:, destination: )
  if first_line == second_line
    (MBTA[first_line].index(origin) - MBTA[second_line].index(destination)).abs
  else
    trip_one_distance = (MBTA[first_line].index(origin) - MBTA[first_line].index(:park_st)).abs
    trip_two_distance = (MBTA[second_line].index(:park_st) - MBTA[second_line].index(destination)).abs
    trip_one_distance + trip_two_distance
  end
end

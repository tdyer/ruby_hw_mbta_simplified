require_relative '../lib/mbta'

RSpec.describe 'mbta' do
  describe '#number_of_stops' do
    it 'returns the number of stops between stations on one line' do
      expect(number_of_stops( first_line: :red_line,
                              origin: :central,
                              second_line: :red_line,
                              destination: :harvard)).to be 1

      expect(number_of_stops( first_line: :red_line,
                        origin: :kendall,
                        second_line: :red_line,
                        destination: :harvard)).to be 2

      expect(number_of_stops( first_line: :red_line,
                  origin: :alewife,
                  second_line: :red_line,
                  destination: :park_st)).to be 6
    end

    it 'returns the number of stops between stations on multiple lines' do
      expect(number_of_stops( first_line: :green_line,
                              origin: :boylston,
                              second_line: :red_line,
                              destination: :alewife)).to be 7
    end
  end
end

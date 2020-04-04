require_relative 'person.rb'
require_relative 'place.rb'
require_relative 'trip.rb'

sam = Person.new("Sam")
claire = Person.new("Claire")
#duke = Person.new("Duke")

spain = Place.new("Spain")
greece = Place.new("Greece")

sam_hol_one = Trip.new(sam, greece)
sam_hol_two = Trip.new(sam, spain)
claire_hol_one = Trip.new(claire, greece)
claire_hol_two = Trip.new(claire, greece)
claire_hol_three = Trip.new(claire, greece)
claire_hol_four = Trip.new(claire, greece)

# Person.print_trips_by_person
# puts "..............."
# Person.print_most_trips
# puts ".............."
# Person.print_least_trips

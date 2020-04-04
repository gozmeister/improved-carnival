class Person
  attr_reader :name

  @@people = []

  def initialize(name)
    @name = name
    @@people << self
  end

  def self.all
    @@people
  end

  def self.print_all_people
    self.all.each do |person|
      puts "Hello, my name is #{person.name}."
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.person == self
    end
  end

  def self.trips_per_traveller
    trips = Trip.all.map { |trip| trip.person }
    trip_count = Hash.new(0)
    trips.each { |trip| trip_count[trip] += 1}
    trip_count
  end

  def self.print_trips_by_person
    self.trips_per_traveller.each do |trip|
      puts "#{trip[0].name} has been on #{trip[1]} trips."
    end
  end

  def self.print_most_trips
    most_trips = self.trips_per_traveller.sort_by { |person, number| number }.last
    puts "#{most_trips[0].name} has been on #{most_trips[1]} trips, which is the most."
  end

  def self.print_least_trips
    least_trips = self.trips_per_traveller.sort_by { |person, number| number }.first
    puts "#{least_trips[0].name} has been on #{least_trips[1]} trips, which is the least."
  end

end
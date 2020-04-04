class Place
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def visitors
    Trip.all.select { |trip| trip.place == self }
  end
    

  def self.print_all_places
    self.all.each do |place|
      puts "#{place.name} is a country that people visit on holiday."
    end
  end

end
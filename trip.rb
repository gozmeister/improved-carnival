class Trip

  attr_reader :person, :place

  @@all = []

  def initialize(person, place)
    @person = person
    @place = place
    @@all << self
  end

  def self.all
    @@all
  end

end
class Vehicle
  attr_accessor :year, :model, :make, :passengers

  def initialize(year, make, model)
    @year = year
    @model = model
    @make = make
    @passengers = []
    @speed = 75
  end

  def speeding?
    @speed > 75
  end

  def speed
    @speed = 80
  end

  def add_passenger(px)
    @passengers << px
  end

  def num_adults
    accumulator = []
    @passengers.each do |adult|
      if adult.adult? == true
        accumulator << adult
      end
    end
    accumulator.count
  end
end

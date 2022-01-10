class Vehicle
  attr_accessor :year, :model, :make, :passengers

  def initialize(year, make, model)
    @year = year
    @model = model
    @make = make
    @passengers = []
    @speeding = false

  end

  def speeding?
      @speeding
      end

  def speed
      @speeding = !@speeding
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

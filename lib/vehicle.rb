class Vehicle
  attr_accessor :year, :model, :make, :passengers, :num_adults

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
    @speeding = true
  end


  def add_passenger(px)
    @passengers << px
  end

  def num_adults
    @num_adults = []
    @passengers.each do |adult|
      if adult.adult? == true
        @num_adults << adult
      end
    end
    @num_adults.count
  end
end

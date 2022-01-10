class Vehicle
  attr_accessor :year, :model, :make, :passengers, :adults     
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
    @adults = []
    @passengers.each do |adult|
      if adult.adult? == true
        @adults << adult
      end
    end
    @adults.count
  end
end

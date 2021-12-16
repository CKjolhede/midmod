class Intersection
attr_accessor :street1, :street2, :intersection, :cars

  def initialize(street1, street2)
    @intersection = intersection
    @street1 = street1
    @street2 = street2
    @cars = []
    @cars_speeding = []

  end

  def add_vehicle(car)
    @cars.push(car)
    return @cars
  end


end

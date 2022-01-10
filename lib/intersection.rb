require './lib/passenger'
require './lib/vehicle'

class Intersection
  attr_reader :street1, :street2, 
  def initialize(street1, street2)
     @intersection = intersection
     @street1 = street1
     @street2 = street2
     @cars = []
     @cars_speeding = []
  end

  def location
    p "The intersection is located at the corner of #{street1} amd #{street2}."
  end
end

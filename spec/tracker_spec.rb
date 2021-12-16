require './lib/vehicle'
require './lib/passenger'
require './lib/tracker'
require 'rspec'
require 'pry'

describe Intersection do

  it 'exists' do
    intersection = Intersection.new("main", "first")
    expect(intersection).to be_an_instance_of(Intersection)
  end

  it 'can add vehicles to array of vehicles' do
    intersection = Intersection.new("main", "first")
    @vehicle1 = Vehicle.new("2001", "Honda", "Civic")

    # binding.pry
    expect(intersection.add_vehicle(@vehicle1)).to be(intersection.cars)
  end
end

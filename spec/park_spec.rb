require './lib/passenger'
require './lib/vehicle'
require './lib/park'
require 'pry'

RSpec.describe Park do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @park = Park.new("Park", 10)
    @park.add_car(@vehicle)
    @vehicle.add_passenger(charlie)
    @vehicle.add_passenger(jude)
    @vehicle.add_passenger(taylor)
    # binding.pry
  end

  it 'exists and has retrievable attributes' do
  # binding.pry

  expect(@park).to be_a(Park)
  expect(@park.name).to eq("Park")
  expect(@park.price).to eq(10)
  end

  it 'can add vehicles to the park' do
    # binding.pry

    expect(@park.cars_in_park).to include(@vehicle)
  end

  it 'can list all the passengers that entered the park' do
    expected = []
    expected << @vehicle.passengers
    expect(@park.visitors).to eq(expected)
  end

  it 'can calculate the park total revenue' do
    expect(@park.revenue).to eq(20)
  end
end

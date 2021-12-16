require './lib/passenger'
require 'rspec'
require 'pry'

describe Passenger do
  before(:each) do
    @charlie = Passenger.new("name" => "Charlie", "age" => 18)
    @taylor = Passenger.new("name" => "Taylor", "age" => 12)
  end

  it 'charlie is an instance of passenger class' do
    expect(@charlie).to be_an_instance_of(Passenger)
  end

  it 'taylor is an instance of passenger class' do
    expect(@taylor).to be_an_instance_of(Passenger)
  end


  it 'returns passenger Charlie name' do
    expect(@charlie.name).to eq("Charlie")
  end

  it 'returns passenger Charlies age' do
    expect(@charlie.age).to eq(18)
  end

  it 'returns adult status of charlie' do
    expect(@charlie.adult?).to be(true)
  end

  it 'returns adult status of taylor' do
    expect(@taylor.adult?).to be(false)
  end

  it 'returns driver status of charlie' do
    expect(@charlie.driver?).to be(false)
  end

end

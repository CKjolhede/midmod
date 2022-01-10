require './lib/passenger'
require './lib/vehicle'
require './lib/intersection'
require 'pry'
require 'rspec'

describe Intersection do
  it "exists and has cross streets" do
    intersection = Intersection.new("first", "second")
    # binding.pry
    expect(intersection).to be_an_instance_of(Intersection)
  end

  # it "can read intersection location crossstreets" do
  #   @intersection = Intersection.new("First", "Main")
  #   expect(@intersection.location).to be(" The intersection is located at the corner of #{street1} amd #{street2}.")
  # end
end

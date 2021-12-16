class Passenger
  attr_accessor :name, :age, :person

  def initialize(person = {})
    @person = person
    # @name = person["name"]
    # @age = person["age"]
    @driver = false
  end

  def name
    person["name"]
  end

  def age
    person["age"]
  end

  def adult?
    person["age"] >= 18
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end

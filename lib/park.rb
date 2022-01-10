class Park
  attr_reader :name, :price, :cars_in_park, :visitors
  def initialize(name, price)
    @name = name
    @price = price
    @cars_in_park = []
    @visitors = []
    @adult_visitors = 0
  end

  def add_car(car)
    @cars_in_park << (car)
    @visitors << car.passengers
  end

  def revenue
    @visitors.each do |paying_adult|
      paying_adult.each do |adult|
          if adult.age >= 18
            # binding.pry
            @adult_visitors += 1
          else
          end
        end
      end
      @park_revenue = (@adult_visitors * @price)
    end
end

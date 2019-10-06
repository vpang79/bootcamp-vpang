class Car
  attr_accessor :make, :model

  def initialize (make, model)
    @make = make
    @model = model
  end

  def output
    puts "Nice! Your car is a #{self.make} #{self.model}."
  end
end

car = Car.new("Honda", "NSX")
car.output
car.model = "Civic"
car.output
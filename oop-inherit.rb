class Animal
  def eat
    puts "om nom nom nom"
  end
end

class Dog < Animal
  def bark
    puts "woof woof"
  end
end

class Cat < Animal
  def meow
    puts "meow"
  end
end

class Duck < Animal
  def quack
    puts "quack quack"
  end
end

class GoldenRetriever < Dog
  def fetch
    puts "running and retrieving"
  end
end

class Poodle < Dog
  
end

animal  = Animal.new
dog     = Dog.new
cat     = Cat.new
duck    = Duck.new
gr      = GoldenRetriever.new
poodle  = Poodle.new

puts dog.is_a?(Animal)
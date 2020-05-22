class Customer
  attr_reader :name, :age
  
  @@all = [] 
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip)
    Meal.new(waiter, self,total, tip)
  end
  
  def meals
    Meal.all.collect{|meal| meal.customer == self}
  end
  
  def waiters
    self.meals.scollect{|meal| meal.waiter}
  end
  
end
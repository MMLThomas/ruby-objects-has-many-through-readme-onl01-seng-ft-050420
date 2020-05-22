class Meal
  attr_accessor :tip, :customer, :waiter, :total
  attr_reader :name, 
  
  @@all = []
  
  def initialize(waiter, customer, total, tip = 0)
    @total = total
    @tip = tip
    @customer = customer
    @waiter = waiter
    @all << self
  end
  
  def self.all
    @@all
  end

end
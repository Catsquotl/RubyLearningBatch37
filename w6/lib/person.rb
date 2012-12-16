class Person
  attr_reader :name, :balance

  def initialize name, balance = 0.0
    @name = name
    @balance = balance.to_f
  end
end

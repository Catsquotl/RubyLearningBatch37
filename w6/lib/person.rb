class Person
  attr_reader :name, :balance

  def initialize name, balance = 0.0
    @name = name
      if balance >= 0
        @balance = balance.to_f
      else   
        raise ArgumentError,"Must have initial balance >=0"
      end
  end

  def balance
    @balance
  end

  private 
  def balance= bal
    balance += bal
  end
if $0 == __FILE__
p1 = Person.new("name",0)
p2 = Person.new("fail",-1)

p p1
p p2
end
end

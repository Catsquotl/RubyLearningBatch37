class Dog

attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def bark
    "woof woof"
  end

  def eat
    "#{@name} is eating"
  end

  def chase_cat
    def distance
      distance = rand(0..10)
    end

    until distance == 0
      str = @name + "-" * distance + "cat   "
      print str
    end
    puts "MIAAAAUUW"
  end

  def teach_trick(sym,&block) 
    self.define_singleton_method(sym,&block)  
   # This works too...   
   #   define_singleton_method(sym) do
   #   instance_eval &block
   #  end
  end  

  def method_missing(m,*args,&block)
    puts "#{@name} doesn't know how to #{m}"
  end

end
d = Dog.new('Leo')

d.teach_trick(:hi){ "#{@name} is saying hello" } 

puts d.name
puts d.bark
puts d.eat
d.chase_cat
d.teach_trick(:hi){ "#{@name} is saying hello" } 
puts d.hi
d.doanything

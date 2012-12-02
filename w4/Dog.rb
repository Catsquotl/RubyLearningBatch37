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
  def clear_screen
      system( 'clear') if RUBY_PLATFORM.include?('linux')
      system('cls')   if RUBY_PLATFORM.include?('mswin')
  end

  def chase_cat
    def distance
      distance = rand(11)
    end
    fill = 0 
    until distance == 0
      clear_screen
      str = '-' * fill + @name + "-" * distance + "cat"
      print str
      fill += str.length unless fill > 1250 
      sleep(0.6)
    end
    puts "  MIAAAAUUW"
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

d.chase_cat
puts d.name
puts d.bark
puts d.eat
puts d.hi
d.doanything

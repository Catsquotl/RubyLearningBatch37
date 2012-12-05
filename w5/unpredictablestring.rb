  class String
    def scramble! 
      arr = []
      self.each_char do |c|
	arr << c
      end
      self.replace(arr.shuffle!.join)
    end
  end

class Unpredictablestring < String
   def initialize str
     super str.scramble!
  end
end
str = Unpredictablestring.new("It was a dark and stormy night.") 
puts str
puts str.scramble!
puts str
puts "#{str}"

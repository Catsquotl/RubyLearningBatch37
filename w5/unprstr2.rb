class Unpredictablestring < String
  attr_reader :str
  class String
    def scramble!
      arr = []
      self.each_char do |c|
	arr << c
      end
      str.replace(arr.shuffle!.join)
      self.replace str
    end
  end
  def to_s
    @str
  end  
end

puts `ruby -v`
str = Unpredictablestring.new("It was a dark and stormy night.") 
puts str
puts str.scramble!
#gives a nomethoderror

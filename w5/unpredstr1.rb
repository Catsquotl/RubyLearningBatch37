class Unpredictablestring < String
  attr_reader :str
  def initialize str
    arr = []
    str.each_char do |c|
      arr << c
    end
    str.replace(arr.shuffle!.join)
    return str
  end
  def to_s
    @str
  end  
end

puts `ruby -v`
str = Unpredictablestring.new("It was a dark and stormy night.") 
puts str
#puts str.scramble


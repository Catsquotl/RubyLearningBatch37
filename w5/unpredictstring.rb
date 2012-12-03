class Unpredictablestring < String
  def initialize str
    arr = []
    str.each_char do |c|
      arr << c
    end
    str.replace(arr.shuffle!.join)
    super str.to_s
  end
end

puts `ruby -v`
str = Unpredictablestring.new("It was a dark and stormy night.") 
puts str


class Unpredictablestring < String
  def scramble
    arr = []
    self.each_char do |c|
      arr << c
    end
    str =  arr.shuffle!.join
  end
end

str = Unpredictablestring.new("It was a dark and stormy night.") 
puts str.scramble
 

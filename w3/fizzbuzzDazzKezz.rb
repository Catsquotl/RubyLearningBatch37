def fizzbuzz(range, rules = {3 => 'Fizz',5 => 'Buzz'})
  result = []
  range.each do |num|
  	str = ''
    rules.each do |divisor,word|
      str << word if num % divisor.to_i == 0
    end
    str.empty? ? result << num : result << "*#{str}*"
  end
  result
end
=begin
  doctest : given a range, a hash where {divisor => keyword} str should be added with keyword if number mod divisor == 0
>> fizzbuzz((1..15),{3 => 'Fizz',5 => 'Buzz',7 => 'Dazz', 11 => 'Kezz'})
=> ["*FizzBuzz*", "*Dazz*", -13, "*Fizz*", "*Kezz*", "*Buzz*", "*Fizz*", -8, "*Dazz*", "*Fizz*", "*Buzz*", -4, "*Fizz*", -2, -1, "*FizzBuzzDazzKezz*", 1, 2, "*Fizz*", 4, "*Buzz*", "*Fizz*", "*Dazz*", 8, "*Fizz*", "*Buzz*", "*Kezz*", "*Fizz*", 13, "*Dazz*", "*FizzBuzz*"]
=end
if __FILE__ == $0
  fizzbuzz((-15..15),{3 => 'Fizz',5 => 'Buzz',7 => 'Dazz', 11 => 'Kezz'}).each do |results|
    puts results
  end
end

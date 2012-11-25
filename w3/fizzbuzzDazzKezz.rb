def fizzbuzz(range, hash)
  output = ''
  range.each do |num|
  	str = ''
    hash.each do |divisor,word|
      str << word if num % divisor.to_i == 0
    end
    str.empty? ? output << "#{num}\n" : output << "*#{str}*\n"
  end
  output
end
=begin
  doctest : given a range, a hash where {divisor => keyword} str should be added with keyword if number mod divisor == 0
>> fizzbuzz((1..15),{3 => 'Fizz',5 => 'Buzz',7 => 'Dazz', 11 => 'Kezz'})
=> "1\n2\n*Fizz*\n4\n*Buzz*\n*Fizz*\n*Dazz*\n8\n*Fizz*\n*Buzz*\n*Kezz*\n*Fizz*\n13\n*Dazz*\n*FizzBuzz*\n"
=end
if __FILE__ == $0
has = {3 => 'Fizz',5 => 'Buzz',7 => 'Dazz', 11 => 'Kezz'}
puts fizzbuzz((-15..15),has)
end

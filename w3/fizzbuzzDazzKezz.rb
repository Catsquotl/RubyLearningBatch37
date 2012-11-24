def fizzbuzz(range, hash)
  str = ''
  range.each do |num|
    hash.each do |divisor,word|
      str << word if num % divisor.to_i == 0
    end

    if str.empty?
      puts num 
    else
      puts "*#{str}*"
    end 
    str = '' 
  end
end
=begin
  doctest : given a number or range, a divisor and a keyword str should be added with keyword if number mod divisor == 0
>> fizzbuzz((1..15),{3 => 'Fizz',5 => 'Buzz',7 => 'Dazz', 11 => 'Kezz'})
=>
1
2
*Fizz*
4
*Buzz*
*Fizz*
*Dazz*
8
*Fizz*
*Buzz*
*Kezz*
*Fizz*
13
*Dazz*
*FizzBuzz*

=end
if __FILE__ == $0
has = {3 => 'Fizz',5 => 'Buzz',7 => 'Dazz', 11 => 'Kezz'}
fizzbuzz((1..15),has)
end

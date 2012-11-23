#convert fahrenheit to celsius
#Where celsius is (fahrenheit - 32)*5/9

def convert(degrees_fahrenheit)
  celsius = (degrees_fahrenheit.to_f - 32) * 5/9
end

=begin
doctest: testing the output of the convert method
>> convert(100)
=> 37.77777777777778
=end
if __FILE__==$0
puts "Please insert degrees in fahrenheit to be converted to degrees in Celsius"
degrees_in_fahrenheit = gets.chomp
puts "#{degrees_in_fahrenheit} degrees Fahrenheit is #{"%.2f" % convert(degrees_in_fahrenheit)} degrees Celsius"

end

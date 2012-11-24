=begin
doctest: get 2 strings from 1 by paralel assignment

>> s1 
=> "key"
>> s2
=> "value"
=end
s = 'key=value'
s1,s2 = s.split('=')
puts s1,s2

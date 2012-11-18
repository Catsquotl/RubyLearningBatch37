=begin
doctest: leap_year? returns  true if 2004 is a leap year.
>> leap_year? 2004
=> true
 
doctest: leap_year? returns  true if 2000 is a leap year.
>> leap_year? 2000
=> true

doctest: leap_year? returns  false because 1900 is not a leap year.
>> leap_year? 1900
=> false

doctest: leap_year? returns  false because 2005 is not a leap year.
>> leap_year? 2005
=> false
=end


def leap_year? year
  while year % 4 == 0
    if year % 100 == 0 && year % 400 != 0
      return false
    end
    return true
  end
  return false
end
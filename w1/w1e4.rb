Second = 1.0
minute = 60 * Second
hour = 60 * minute
day = 24 * hour
year = 365 * day

minutes_in_a_year = year / minute

puts "A year has #{minutes_in_a_year.to_i} minutes"

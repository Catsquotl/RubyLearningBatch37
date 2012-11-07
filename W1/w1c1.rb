Second = 1.0
minute = 60 * Second
hour = 60 * minute
day = 24 * hour
month = 30 * day
year = 365 * day

sec = Array.new [979000000, 2158493738, 246144023, 1270166272, 1025600095]
sec.each do |time|
  puts "I am #{(time / year).to_i} years and #{((time % year)/month).to_i} months old"
end



Second = 1.0
@minute = 60 * Second
@hour   = 60 * @minute
@day    = 24 * @hour
@month  = 30 * @day
@year   = 365 * @day

def convert age_in_seconds
 "I am #{"%2d" % (age_in_seconds / @year).to_i} years and #{"%2d" % (age_in_seconds % @year/@month).to_i} months old"
end

ages_in_seconds = [979000000, 2158493738, 246144023, 1270166272, 1025600095]
ages_in_seconds.each do |time|
   puts convert time
end

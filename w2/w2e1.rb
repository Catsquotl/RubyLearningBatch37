s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
s.each_line.with_index(1) do |line,index|
puts "Line #{index}:#{line}"
end

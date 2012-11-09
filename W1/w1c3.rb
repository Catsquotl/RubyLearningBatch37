#Multiplication tables

def multiplication_table num,heading="",decoration=false
	table = Array.new
	(1..num).each do |x|
		(1..num).each do |y|
	   table.push(x * y)
	  end
	end
	column_width = table.last.to_s.size
	str = ""
	until table.empty?
	  table.slice!(0...num).each do |cell|
      str << cell.to_s.rjust(column_width + 1)
    end
    str << '/n'
  end
	str.split('/n')
end

puts multiplication_table 9
puts multiplication_table 20

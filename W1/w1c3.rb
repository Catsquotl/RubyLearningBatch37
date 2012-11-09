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
      str << cell.to_s.rjust(column_width) + ' '
    end
    str << "\n"
  end

  output = "#{heading.center(num * (column_width + 1))}\n"

  if decoration
    dec = '=' * (num  * (column_width + 1 )) + "\n"
    output << dec << str << dec
  else
    output << str
  end
end
puts multiplication_table 20, 'Table times to 9', true

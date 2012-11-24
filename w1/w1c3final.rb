# Multiplication tables
def multiplication_table num,heading="",decoration=false
  table = Array.new
  if num == 0
    str = "#{heading}\n===\n 0 \n===\n"
    return str
  end
  if num > 0
    startnum = 1
    endnum = num
  else
    startnum = num
    endnum = -1
  end
  (startnum..endnum).each do |x|
    (startnum..endnum).each do |y|
      table.push(x * y)
    end
  end
  if table.last.to_s.size < 2
    column_width = 2
  else column_width = table.last.to_s.size
  end 
  str = ""
  until table.empty?
    table.slice!(0...num.abs).each do |cell|
      str << cell.to_s.rjust(column_width) + ' '
    end 
    str << "\n" 
  end
  output = "#{heading.center(num * ( column_width + 1))}\n"
  if decoration
    dec = '=' * (num.abs * (column_width + 1 )) + "\n"
    output << dec << str << dec 
  else 
    output << str 
  end 
end 
puts multiplication_table( 9, "table times 9",true)
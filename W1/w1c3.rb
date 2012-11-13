#Multiplication tables

def multiplication_table num,heading="",decoration=false

  table = Array.new
  if num > 0
    (1..num).each do |x|
      (1..num).each do |y|
        table.push(x * y)
      end
    end
  end
    str = ""
  if num == 0
    str = '0'
  end

  if table.last.to_s.size < 2
    column_width = 2
    else
    column_width = table.last.to_s.size
  end


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
=begin
doctest: multiplication_table 1,'table', true
>> multiplication_table 1,'table', true
=> table\n===\n 1 \n===

doctest:
>> multiplication_table 0,'table', true
=> "table\n===\n 0 \n==="
=end

s = multiplication_table 1,'table', true
p s
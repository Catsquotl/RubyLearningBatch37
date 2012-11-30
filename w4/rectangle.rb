class Rectangle

  def initialize(side1,side2)
    if side1 >= side2
      @long = side1
      @short = side2
    else
      @long = side2
      @short = side1
    end
  end

  def perimeter
    2*(@long+@short)
  end

  def area
    @long*@short
  end
end

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area()}"
puts "Perimeter is = #{r.perimeter}"

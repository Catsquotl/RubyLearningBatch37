class Shape
  attr_accessor :width, :height, :radius, :sound_file

  def initialize *args
    @width = args[0]
    @height = args[1]
    @sound_file = args[2]
    @radius = args[3]
    #the last 2 only needed for gui green_shoes
    @top = args[4]
    @left = args[5]
  end

  def rotate 
    "animate do |i|
      clear do
        rotate 10 * i
      end
    end" 
  end
  
  #play_sound relies on SoX play being installed
  def play_sound 
    system("play #{@sound_file}")
  end

end

class Circle < Shape
  def to_greenshoes
    s = "oval #{@left},#{@top},#{@radius}"
  end
end

class Square < Shape
  def to_greenshoes
    s = "rect #{@left},#{@top},#{@width},#{@height}"
  end
end

class Triangle < Shape
  def to_greenshoes
    s = "shape do
          move_to #{@left},#{@top}
	  line_to #{@width/2 + @left},#{@top + @height}
	  line_to #{@width/2 - @left},#{@top + @height}
	  line_to #{@left},#{@top}"
  end
end
if __FILE__ == $0
c = Circle.new(nil,nil,'circle.aif',60,10,10)
s = Square.new(10,50,'shape.aif')
t = Triangle.new(20,50,'triangle.aif')
p c,s,t
end

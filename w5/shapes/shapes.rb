class Shape
  attr_accessor :width, :height, :radius, :sound_file

  def initialize (width = 1,height = nil, soundfile)
    @width = width
    @height = height || width
    @sound_file = soundfile
  end

  def rotate 
    animate do |i|
      clear do
        rotate 10 * i
      end
    end 
  end
  
  #play_sound relies on SoX play being installed
  def play_sound 
    system play @sound_file
  end

end

class Circle < Shape
  def initialize *args
    super
    @radius = (@width || @height) / 2
  end
end

class Square < Shape
end

class Triangle < Shape
end
if __FILE__ == $0
c = Circle.new(30,'circle.aif')
t = Triangle.new(20,50,'triangle.aif')
s = Square.new(50,50,'shape.aif')
p c,s,t
end

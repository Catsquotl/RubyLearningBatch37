class Shape
  attr_accessor :sound_file

  def initialize(sound_file,*args)
    @name = self.class.to_s
    @sound_file = sound_file
  end

  def play_sound
    if @sound_file =~ /\w*\.aif/
    "Playing .aif file"
  else
    "soundfile is not in aif format"
  end
  end

  def rotate 
    "#{@name} is rotating around its center."
  end
end

class Circle < Shape
end

class Triangle < Shape
end

class Square < Shape
end

c = Circle.new("Csnd.aif")
t = Triangle.new("Tsnd.aif")
s = Square.new("Ssnd.aif")
[s,t,c].each do |shape|
  puts shape.rotate
  puts shape.play_sound
end


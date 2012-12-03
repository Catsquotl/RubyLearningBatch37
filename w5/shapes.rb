class Shape
  attr_accessor :center
  def initialize sound_file
    @soundfile = sound_file
  end

  def play_sound 
    #aif_player(@sound_file)
  end

  def rotate 
    #code to rotate shape around @center
  end
end

class Circle < Shape
  def initialize sounfile
    super
  end
end

class Triangle < Shape
  def initialize soundfile
    super
  end
end

class Square < Shape
  def initialize soundfile
    super
  end
end

c = Circle.new('soundfile')
puts c.instance_variables

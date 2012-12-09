require "green_shoes"

class Shape < Shoes::Shape
  attr_accessor :sound_file, :name, :color

  def initialize(*args)
    @name = self.class.to_s
    @sound_file = args[0]  || nil
    @color = args[2]   || nil
  end

  def play_sound
    if @sound_file =~ /\w*\.aiff /
      "Playing .aif file"
    else
      "soundfile is not in aif format"
    end
  end

  def rotate
    "animate do |i|
      clear do
	rotate 10*i
          clear do
	    oval 10,10,50
          end
        end
      end"
  end
end


class Circle < Shape
  attr_accessor :radius
  @radius = 50
  def draw
    "oval 10,10,50"
  end
end

class Triangle < Shape
end

class Square < Shape
end


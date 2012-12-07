class Gui
  require "./shapes"
    
  def draw(ob,&blk) 
    puts "Drawing #{ob.class}."
    # To be implemented.green_shoes perhaps
    click(ob,&blk)
  end

  def initialize *args 
    args.each do |ob|
      draw(ob){|ob| puts ob.rotate ; puts ob.play_sound }
    end
  end

  def click (ob)
    yield(ob) if block_given?
  end
end


c = Circle.new
s = Square.new
t = Tringle.new
g=Gui.new c,s,t

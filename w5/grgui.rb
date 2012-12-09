require "green_shoes"
require "./shapes"


Shoes.app do
  
@circle = Circle.new
  strokewidth 4
  fill red..yellow
  eval "#{@circle.draw}"
  click do
    eval "#{@circle.rotate}"
    eval "#{@circle.draw}"
  end
end

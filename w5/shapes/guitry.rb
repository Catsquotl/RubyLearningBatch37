require "green_shoes"

Shoes.app do
  fill green
  shape do
    move_to 100,20
    line_to 150,200
    line_to 50,200
    line_to 100,20
  end
end

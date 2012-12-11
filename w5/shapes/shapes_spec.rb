require "minitest/autorun"
require "./shapes"

describe "a Shape should be able to tell its width, length or radius" do
  before do
    @circle = Circle.new(nil,nil,'circle.aif',60,10,10)
    @triangle = Triangle.new(20,50,'triangle.aif')
    @square  = Square.new(10,50,'shape.aif')
  end

  describe " When asked for its radius" do
    it "must give it if its class is a circle" do
      @circle.radius.must_equal 60
      @triangle.width.must.equal 20
      @triangle.height.must.equal 50
      @square.width.must.equal 10
      @square.height.must.equal 50
  end
end
end


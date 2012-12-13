require "minitest/autorun"
require "minitest/reporters"
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require "./shapes"

describe Shape, "a Shape should be able to tell its width, length or radius" do
  before do
    @circle = Circle.new(30,'circle.aif')
    @triangle = Triangle.new(60,60,'triangle.aif')
    @square  = Square.new(60,'shape.aif')
  end

  describe "When Shape is a circle" do
    it "must have a radius" do
      @circle.radius
    end
    it "must return a proper radius if width or height is set" do
      @circle.radius.must_equal 15 
    end
  end

  describe "when Shape is a Square" do
    it "must have a width or a height set" do
      @square.width.must_equal @square.height
    end
  end
end


require "minitest/autorun"
require "minitest/reporters"
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative "../wrapper.rb"

describe Wrapper,"A wrapper around SHape object for green_shoes Gui"do
  it "is able to create a recieve a shape object" do
    cir = Circle.new(60,"circle.aif")
    wrap = Wrapper.new 
  end
end

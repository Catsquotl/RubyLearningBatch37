require "minitest/autorun"
require "minitest/reporters"
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative "../lib/person.rb"

describe Person do
  before do
    @person = Person.new("Name",0.0)
  end

  it "must have a name" do
    @person.name.must_equal "Name"
  end

end

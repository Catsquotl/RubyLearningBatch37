require "minitest/autorun"
require "minitest/reporters"
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative "../lib/person.rb"

describe Person do
  before do
      @person = Person.new("Name",(0.0))
  end
  describe Person,"must have a name" do
    it "must have a name" do
      @person.name.must_equal "Name"
    end
    it "must have an initial balance >= 0" do
      @person.balance.must_equal  0.0
      initial_balance = Proc.new do
      p = Person.new("Name",-1)
      end
      initial_balance.must_raise ArgumentError
    end
  end

end

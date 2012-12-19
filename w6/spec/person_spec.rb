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
    end
    it "must raise an argument error if initial balance is less than 0" do
      assert_raises(ArgumentError)do
        Person.new("Name",-1)
      end
    end
  end
  it "Must be ables to add to balance" do
    @person.add_balance(15).must_equal 15.0
  end
  it "Must be able to substract from balance" do
    @person.substract_from_balance(15).must_equal(-15.0)
  end
end


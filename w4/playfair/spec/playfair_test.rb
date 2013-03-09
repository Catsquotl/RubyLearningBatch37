require_relative 'test_helper'
load '../lib/helper.rb'


describe Playfair do
  ilr_key = 'I love Ruby'
  pf_key = 'Playfair example'
  text = 'Hide the gold in the tree stump'
  oddtext = 'RUUUUBY' 
  let(:ilr){Playfair.new("#{ilr_key}")}
  let(:pf){Playfair.new("#{pf_key}")}

  describe 'Making the grid' do
    it 'must create 5 by 5 grid' do
      ilr.grid.grid.must_equal %w[I L O V E R U B Y A C D F G H K M N P Q S T W X Z]
      pf.grid.grid.must_equal %w[P L A Y F I R E X M B C D G H K N O Q S T U V W Z]
    end
  end

  describe "Making the text" do
    it "must change the format the initial text for processing" do
      expected = 'HIDETHEGOLDINTHETREXESTUMP'
      ilr.encrypt(text).must_equal expected
    end
    it "must add an X if there is an odd number of letters after insertion of tokens" do
      expected = 'RUUXUZUBYX'
      pf.encrypt(oddtext).must_equal expected
    end
  end

  it "must handele these edges" do
    ja = Playfair.new('I am not succeding')
    expected = 'IAPANX'
    ja.encrypt('japan').must_equal expected

    rl = Playfair.new('key is ok')
    expected = 'RUUXUZUBYLOVEX'
    rl.encrypt('ruuuuby love').must_equal expected
  end

  it "must get the token in the right order" do 
    rl = Playfair.new('key is ok')
    expected = 'RUUXUZUBYLOXOVEX'
    rl.encrypt('ruuuuby loove').must_equal expected
  end

  it "must test the same thing as above" do
    rl = Playfair.new('key is ok')
    expected = 'WEEXEZELOXOZOXOVERUXUZUXUBYX'
    rl.encrypt('weeee loooove ruuuuby').must_equal expected
  end

end

require 'minitest/autorun'
require 'minitest/colorize'
require_relative '../lib/playfair'


describe Playfair do
  ilr_key = 'I love Ruby'
  pf_key = 'Playfair example'
  text = 'Hide the gold in the tree stump'
  oddtext = 'RUUUUBY'
  let (:ilr){Playfair.new("#{ilr_key}","#{text}")}
  let (:pf){Playfair.new("#{pf_key}","#{oddtext}")}

  describe 'Making the grid' do
    it 'must create 5 by 5 grid' do
      ilr.grid.must_equal %w[I L O V E R U B Y A C D F G H K M N P Q S T W X Z]
      pf.grid.must_equal %w[P L A Y F I R E X M B C D G H K N O Q S T U V W Z]
    end
  end

  describe "Making the text" do
    it "must change the format the initial text for processing" do
      expected = 'HIDETHEGOLDINTHETREXESTUMP'
      ilr.text.must_equal expected
    end
    it "must add an X if there is an odd number of letters after insertion of tokens" do
      expected = 'RUUXUZUBYX'
      pf.text.must_equal expected
    end
  end

end

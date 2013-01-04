require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/playfair'


describe Playfair do
  let (:ilr){Playfair.new('I love Ruby')}
  let (:pf){Playfair.new('Playfair example')}

    it 'must create 5 by 5 grid' do
      ilr.grid.must_equal %w[I L O V E R U B Y A C D F G H K M N P Q S T W X Z]
      pf.grid.must_equal %w[P L A Y F I R E X M B C D G H K N O Q S T U V W Z]
    end
  end

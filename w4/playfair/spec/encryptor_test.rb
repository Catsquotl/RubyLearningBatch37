require_relative 'test_helper'
require_relative '../lib/helper'



describe 'Encryptor' do

  p = Playfair.new('this is a key')
  p.encrypt('hide the gold in the treestump')
  e = Encryptor.new(p)

  it 'must correctly initialize pairs' do
  e.pairs.must_equal [["H", "I"], ["D", "E"], ["T", "H"], ["E", "G"], ["O", "L"], ["D", "I"], ["N", "T"], ["H", "E"], ["T", "R"], ["E", "X"], ["E", "S"], ["T", "U"], ["M", "P"]]
  end

end


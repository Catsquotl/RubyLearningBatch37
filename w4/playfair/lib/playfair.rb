require_relative 'tokenizer'
require_relative 'grid'
require_relative 'encryptor'

class Playfair

  attr_reader :text, :grid

  def initialize key
    @key = prepare key
    @grid = Grid.new(key)
  end

  def prepare txt
    txt.upcase!
    txt.gsub!(/\s+/,"")
    text = ''
    txt.chars do |ch| 
      if /[[:alpha:]]/ =~ ch
	ch = 'I' if ch.eql? 'J'
	text.concat ch	
      end
    end
    text
  end 

  def encrypt message
    prep = prepare message
    @tok = Tokenizer.new(prep)
    Encryptor.new(grid,@tok.pairs)
    @tok.text
  end

end

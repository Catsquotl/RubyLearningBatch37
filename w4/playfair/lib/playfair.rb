require_relative 'tokenizer'

class Playfair
  BASE_GRID = ('A'...'J').to_a + ('K'..'Z').to_a

  attr_reader :text, :grid

  def initialize key
    make_key_grid key
  end

  def make_key_grid key
    @key = prepare key
    @grid = @key.split(//) + BASE_GRID
    @grid.uniq!
  end

  def prepare txt
    txt.upcase!
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
    @text = prepare message
    t = Tokenizer.new(@text)
    t.text
  end

end


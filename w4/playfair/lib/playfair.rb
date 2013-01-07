class Playfair
  @@BASE_GRID = ('A'...'J').to_a + ('K'..'Z').to_a

  attr_reader :text, :grid

  def initialize key, text
    @token = 'X'
    @index = nil
    @key = key.upcase
    @orig_text = text.upcase
    make_key_grid
    format_text
  end

  def update_token
    if @token.eql? 'X'
      @token = 'Z'
    else
      @token = 'X'
    end
  end

  def update_index
    @index = (@text =~ /(.)\1/)
  end

  def prepare txt
    text = ''
    txt.chars do |ch|
      if /[[:alpha:]]/ =~ ch
	if ch.eql? 'J'
	  text.concat 'I'
	else
	  text.concat ch	
	end
      end 
    end
    text.split(//)
  end 

  def make_key_grid
    @grid =(self.prepare @key)
    @grid += @@BASE_GRID
    @grid.uniq!
  end

  def format_text
    @text = (self.prepare @orig_text).join
    update_index
    while @index
      @text.insert(@index + 1, @token)
      update_index
      update_token
    end
  end
end

if $0 == __FILE__
  ps = Playfair.new('I Love Ruby', 'Heel veel raar gedoe')
  p ps
end

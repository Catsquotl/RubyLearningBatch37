class Playfair
  BASE_GRID = ('A'...'J').to_a + ('K'..'Z').to_a

  attr_reader :text, :grid

  def initialize key, text
    @token = 'X'
    @index = nil
    @key = key.upcase
    @orig_text = text.upcase
    make_key_grid
    format_text @orig_text
    finalize @text
  end

  def update_token
    if @token.eql? 'X'
      @token = 'Z'
    else
      @token = 'X'
    end
  end

  def insert_token txt
    txt.each do |pair|
      if pair[0].eql? pair[1]
	pair.insert(1, @token)
	update_token
	tmp = txt.join
        @text = tmp
	self.format_text tmp
      end
    end
  end

  def prepare txt
    text = ''
    txt.chars do |ch| 
      if /[[:alpha:]]/ =~ ch
	ch = 'I' if ch.eql? 'J'
	text.concat ch	
      end
    end
      text.split(//)
  end 

  def make_key_grid
    @grid = (self.prepare @key) + BASE_GRID
    @grid.uniq!
  end

  def format_text text
    txt = []
    tmp = (self.prepare text)
    txt.push tmp.shift(2) until tmp.empty?
    insert_token txt
  end

  def finalize txt
    @text.concat 'X' if txt.size.odd?
  end
end 
if $0 == __FILE__
  ps = Playfair.new('I Love Ruby', 'RUUUUBY')
  p ps
end

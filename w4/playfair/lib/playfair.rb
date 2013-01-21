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

  def pair_text tmp
    tmp_ar = tmp.split(//)
    @pairs = []
    @pairs.push tmp_ar.shift(2) until tmp_ar.empty?
    tokenize
  end
  
  def tokenize  
  @pairs.each do |pair|
      if need_token? pair
	insert_token pair
	break
      end
    end
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
    pair_text @text 
  end

  def need_token? pair
    pair[0] == pair[1]? true : false
  end

  def insert_token pair
    @token ||= 'X'
    pair.insert(1, @token) 
    update_token
  end

  def update_token
    if @token.eql? 'X'
      @token = 'Z'
    else
      @token = 'X'
    end
  end

  def finalize txt
    @text.concat 'X' if txt.size.odd?
  end

end
if $0 == __FILE__
  ps = Playfair.new('I Lovej Ruby')
  ps.encrypt('ruuuuby Loove..!@#')
  p ps
end

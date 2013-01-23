class Tokenizer

  attr_reader :text

  def initialize text
    pair_text text
    finalize @text
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

  def need_token? pair
    pair[0] == pair[1]? true : false
  end

  def insert_token pair
    pair.insert(1, @token) 
    update_token
    @text = @pairs.join
    pair_text @text
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

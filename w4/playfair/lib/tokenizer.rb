class Tokenizer

  attr_reader :text

  def initialize text
    @token = 'X'
    @text = text
    go
  end

  def pair_text tmp
    tmp_ar = tmp.split(//)
    @pairs = []
    @pairs.push tmp_ar.shift(2) until tmp_ar.empty?
  end

  def tokenize enum
    enum.each_with_index do |pair,index|
      if need_token? pair
        index-1 == @index ? update_token : @token = 'X'
        @index = index
        insert_token pair
	break
      end
    end
  end

  def need_token? pair
    pair[0] == pair[1]? true : false
  end

  def insert_token pair
    pair.insert 1,@token
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

  def run
    pair_text text
    tokenize @pairs.to_enum
    @text = @pairs.join
  end

  def go
    tmp = @text
    self.run
    if tmp === @text
      finalize @text
    else
      self.go
    end
  end

end

t = Tokenizer.new('heel veeeeel dubbbbellllle letters')
p t

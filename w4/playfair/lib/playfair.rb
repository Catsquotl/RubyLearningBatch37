class Playfair

  attr_reader :text, :grid, :pairs, :prep_text , :tok

  def initialize key
    @key = prepare key
    @grid = Grid.new(key)
  end

  def encrypt message
    @tok = Tokenizer.new( prepare message)
    @pairs = tok.pairs
    tok.text
  end

  def decrypt message
  end

  private

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
    @prep_text = text
  end
end



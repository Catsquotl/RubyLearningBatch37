class Encryptor
  attr_reader :pairs, :grid

  def initialize playfairobj
    @grid = playfairobj.grid
    @pairs = playfairobj.pairs
    @enc_pairs = []
  end

  def do
    pairs.each do |pair|
      @enc_pairs.push(encrypt_pair pair)
    end
  end

  def encrypt_pairs pair
  end

end



class Playfair
  @@init_grid = ('A'...'J').to_a + ('K'..'Z').to_a
  attr_reader :grid

  def initialize key
    @key = key
    setup
  end

  def setup
    @grid = []

    @key.chars do |ch|
      if ch == ('j' || 'J')
	ch = 'I'
      end
      if /[[:alpha:]]/ =~ ch
	@grid.push ch.upcase
      end

    end 
    @grid += @@init_grid
    @grid.uniq!
  end 

end

if __FILE__==$0
  p = Playfair.new 'het is mij een waar genoegen'
  p p
end 

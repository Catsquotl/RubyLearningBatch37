class Grid

  BASE_GRID = ('A'...'J').to_a + ('K'..'Z').to_a
  attr_reader :grid

  def initialize key
    make_key_grid key
    make_rows
  end

  def index(pair)
    pair.each.map {|ch| grid.index ch}
  end

  private

  def make_key_grid key
    @grid = key.split(//) + BASE_GRID
    @grid.uniq!
  end

  def make_rows
    @rows = []
    tmp = @grid.clone
    @rows.push tmp.shift(5) until tmp.empty?
  end

end


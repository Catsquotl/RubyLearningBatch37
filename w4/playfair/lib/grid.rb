class Grid

  BASE_GRID = ('A'...'J').to_a + ('K'..'Z').to_a
  attr_reader :grid
  def initialize key
    make_key_grid key
    rows
    columns
  end

  def make_key_grid key
    @grid = key.split(//) + BASE_GRID
    @grid.uniq!
  end

  def rows
    @rows = []
    tmp = @grid.clone
    @rows.push tmp.shift(5) until tmp.empty?
  end

  def columns
    @columns = [[],[],[],[],[]]
      @rows.each do |row|
      @columns[0].push row[0]
      @columns[1].push row[1]
      @columns[2].push row[2]
      @columns[3].push row[3]
      @columns[4].push row[4]
    end      
  end
end

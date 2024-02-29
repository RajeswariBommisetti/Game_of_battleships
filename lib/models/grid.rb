require 'pry'
class Grid
  attr_reader :size, :ships

  def initialize(size, ships)
    validate_grid_size(size)
    @size = size
    @ships = ships
    @grid = Array.new(size) { Array.new(size, '_') }
    place_ships
  end

  def validate_grid_size(size)
    raise ArgumentError, "Grid size must be between 1 and 9" unless (1..9).include?(size)
  end

  def place_ships
    @ships.each do |x, y|
      @grid[x][y] = 'B'
    end
  end

  def hit(x, y)
    if @grid[x][y] == 'B'
      @grid[x][y] = 'X'
      true
    else
      @grid[x][y] = 'O'
      false
    end
  end

  def to_s
    @grid.map { |row| row.join(' ') }.join("\n")
  end
end

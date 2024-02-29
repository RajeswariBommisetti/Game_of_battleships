# lib/models/player.rb

class Player
  attr_reader :grid, :moves

  def initialize(grid, moves)
    @grid = grid
    @moves = moves
  end
end

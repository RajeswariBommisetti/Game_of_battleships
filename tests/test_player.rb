# tests/test_player.rb

require_relative '../lib/models/player'
require_relative '../lib/models/grid'
require_relative '../lib/models/ship'
require 'test/unit'

class TestPlayer < Test::Unit::TestCase
  def setup
    grid = Grid.new(5, [[1, 1], [1, 2]])
    moves = [[1, 1], [2, 2]]
    @player = Player.new(grid, moves)
  end

  def test_player_initialization
    assert_equal(5, @player.grid.size)
    assert_equal([[1, 1], [1, 2]], @player.grid.ships)
    assert_equal([[1, 1], [2, 2]], @player.moves)
  end
end

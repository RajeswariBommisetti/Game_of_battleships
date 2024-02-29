# tests/test_main_ship_positions.rb

require_relative '../lib/main'
require 'test/unit'

class TestMainShipPositions < Test::Unit::TestCase
  def test_valid_ship_positions
    assert_nothing_raised(ArgumentError) { validate_ship_positions(5, [[1, 1], [2, 2]]) }
  end

  def test_invalid_ship_positions
    assert_raise(ArgumentError) { validate_ship_positions(3, [[1, 1], [3, 3]]) }
  end

  def test_valid_ship_positions_uniq
    assert_nothing_raised(ArgumentError) { validate_unique_ship_positions([[1, 1], [2, 2]], [[3, 3], [4, 4]]) }
  end

  def test_invalid_ship_positions_uniq
    assert_raise(ArgumentError) { validate_unique_ship_positions([[1, 1], [1, 1]], [[3, 3], [4, 4]]) }
  end
end

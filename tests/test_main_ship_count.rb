# tests/test_main_ship_count.rb

require_relative '../lib/main'
require 'test/unit'

class TestMainShipCount < Test::Unit::TestCase
  def test_valid_ship_count
    assert_nothing_raised(ArgumentError) { validate_ships_count(5, [[1, 1]], [[0, 0]]) }
  end

  def test_invalid_ship_count
    assert_raise(ArgumentError) { validate_ships_count(3, [[1, 1], [2, 2], [2, 0], [0,2], [1, 2]], [[0, 0]]) }
  end
end

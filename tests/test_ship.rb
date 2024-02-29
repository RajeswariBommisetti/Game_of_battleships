# tests/test_ship.rb

require_relative '../lib/models/ship'
require 'test/unit'

class TestShip < Test::Unit::TestCase
  def test_ship_initialization
    ship = Ship.new([[1, 1], [1, 2]])
    assert_equal([[1, 1], [1, 2]], ship.positions)
  end
end

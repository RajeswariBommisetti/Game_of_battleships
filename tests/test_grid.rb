# tests/test_grid.rb

require_relative '../lib/models/grid'
require 'test/unit'

class TestGrid < Test::Unit::TestCase
  def test_valid_grid_size
    assert_nothing_raised(ArgumentError) { Grid.new(5, []) }
  end

  def test_invalid_grid_size
    assert_raise(ArgumentError) { Grid.new(10, []) }
    assert_raise(ArgumentError) { Grid.new(0, []) }
  end
end
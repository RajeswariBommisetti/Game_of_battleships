# lib/models/ship.rb

class Ship
  attr_reader :positions

  def initialize(positions)
    @positions = positions
  end
end

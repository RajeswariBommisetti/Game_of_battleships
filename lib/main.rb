# lib/main.rb
require 'pry'
require_relative 'input'
require_relative 'models/grid'
require_relative 'models/player'
require_relative 'game'

def main(input_file, output_file)
  size, ships1, ships2, moves1, moves2 = Input.read_input(input_file)
  validate_ships_count(size, ships1, ships2)
  validate_ship_positions(size, ships1, ships2)
  validate_unique_ship_positions(ships1, ships2)

  grid1 = Grid.new(size, ships1)
  grid2 = Grid.new(size, ships2)
  player1 = Player.new(grid1, moves1)
  player2 = Player.new(grid2, moves2)
  game = Game.new(player1, player2)
  binding.pry
  game.simulate
  result = game.result
  Input.write_output(output_file, player1.grid, player2.grid, result)
end

def validate_ships_count(size, ships1, ships2)
  max_ships = size * size / 2
  raise ArgumentError, "Number of ships exceeds maximum allowed for grid size" if ships1.size > max_ships || ships2.size > max_ships
end

def validate_ship_positions(size, *ships)
  ships.flatten(1).each do |x, y|
    raise ArgumentError, "Ship position (#{x},#{y}) is out of bounds" if x < 0 || x >= size || y < 0 || y >= size
  end
end

def validate_unique_ship_positions(ships1, ships2)
  raise ArgumentError, "Duplicate ship positions for player 1" if ships1.uniq.size != ships1.size
  raise ArgumentError, "Duplicate ship positions for player 2" if ships2.uniq.size != ships2.size
end


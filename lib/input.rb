# lib/io.rb

module Input
  def self.read_input(filename)
    lines = File.readlines(filename).map(&:chomp)
    size = lines[0].to_i
    ships_count = lines[1].to_i
    ships1 = parse_ships(lines[2], size)
    ships2 = parse_ships(lines[3], size)
    missiles = lines[4].to_i
    moves1 = parse_moves(lines[5], missiles)
    moves2 = parse_moves(lines[6], missiles)

    [size, ships1, ships2, moves1, moves2]
  end

  def self.parse_ships(line, size)
    line.split(':').map do |positions|
      positions.split(',').map(&:to_i)
    end
  end

  def self.parse_moves(line, missiles)
    line.split(':').map do |move|
      move.split(',').map(&:to_i)
    end
  end

  def self.write_output(filename, player1_grid, player2_grid, result)
    File.open(filename, 'w') do |file|
      file.puts "Player1\n#{player1_grid}\n\nPlayer2\n#{player2_grid}\n\n#{result}"
    end
  end
end

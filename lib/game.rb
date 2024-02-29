# lib/game.rb
require 'pry'

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def simulate
  	binding.pry
    @player1.moves.each { |move| @player2.grid.hit(*move) }
		@player2.moves.each { |move| @player1.grid.hit(*move) }
  end

  def result
		p1_hits = count_hits(@player1.grid)
		p2_hits = count_hits(@player2.grid)
		if p1_hits > p2_hits
		  "Player 1 wins"
		elsif p2_hits > p1_hits
		  "Player 2 wins"
		else
		  "It is a draw"
		end
	end

	private

	def count_hits(grid)
	  grid.size * grid.size - grid.to_s.count('B')
	end
end


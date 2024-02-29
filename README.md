# Battleship Game

This is a Ruby implementation of the Battleship game, where two players compete to sink each other's battleships.

## Overview

The game is played on an M * M grid, where each player initializes their grid with a specified number of ships. Players take turns firing missiles at each other's grids, aiming to sink the opponent's ships. The player who destroys all of the opponent's ships first wins the game.

## Features

- Grid-based battleship game simulation.
- Input validation to ensure the game's rules are followed.
- Test suite to verify the functionality and validate input.
  
## Installation

1. Clone the repository to your local machine:
  git clone repository-url

2. Navigate to the project directory:
3. cd game_of_battleships

## Usage

1. Populate an input file (input.txt) with the game setup according to the provided rules.

2. Run the main program:
ruby lib/main.rb input.txt output.txt
3. Check the generated output.txt file for the game results.

## Tests
 
 The project includes unit tests to ensure the correctness of the implemented functionalities. You can run the tests with the following command:

 ruby -Ilib:test tests/test_*.rb

## Input Format

The input for the game is read from a file and follows a specific format:

- Line 1: Grid size (M)
- Line 2: Number of ships (S)
- Line 3: Player 1 ship positions
- Line 4: Player 2 ship positions
- Line 5: Total number of missiles (T)
- Line 6: Player 1 moves
- Line 7: Player 2 moves

Example input file:
5
5
1,1:2,0:2,3:3,4:4,3
0,1:2,3:3,0:3,4:4,1
5
0,1:4,3:2,3:3,1:4,1
0,1:0,0:1,1:2,3:4,3

## Author

Rajeswari Bommisetti




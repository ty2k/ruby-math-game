# main.rb

require './game.rb'
require './player.rb'
require './question.rb'
require './turn.rb'

puts "\n
  +-----------------------------------------------------------------+
  |  Welcome to the Ruby Math Game. This is a two-player game.      |
  |  After selecting names for each player, the game will start.    |
  |  Each player takes turns answer a skill-testing math question.  |
  |  If a player answers incorrectly, they lose a life.             |
  |  Each player starts with three lives.                           |
  |  The game ends when one player loses all of their lives.        |
  +-----------------------------------------------------------------+\n\n\n"

MathGame::Game.new
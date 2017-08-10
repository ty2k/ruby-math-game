# game.rb

module MathGame
  class Game

    # Assign each player a name with new Player instances
    def initialize
      puts "What is player 1's name?"
      @player1 = MathGame::Player.new
      puts "Player 1 is #{@player1.name}."
      puts "What is player 2's name?"
      @player2 = MathGame::Player.new
      puts "Player 2 is #{@player2.name}."
      play_game
    end


    def play_game
      while @player1.lives > 0 && @player2.lives > 0
        # Player 1 question sequence
        puts "---------------------------------"
        puts "Question for #{@player1.name}: "
        turn_player1 = MathGame::Turn.new
        if !turn_player1.result
          @player1.lose_life
        end
        if @player1.lives == 0
          puts "Sorry #{@player1.name}, you lose."
          puts "You win, #{@player2.name}!"
          break
        elsif @player1.lives == 1
          puts "Be careful #{@player1.name}, only 1 life left!"
        else
          puts "#{@player1.name} has #{@player1.lives} lives left."
        end
        puts "---------------------------------"
        # Player 2 question sequence
        puts "Question for #{@player2.name}: "
        MathGame::Turn.new
        if !turn_player1.result
          @player2.lose_life
        end
        if @player2.lives == 0
          puts "Sorry #{@player2.name}, you lose."
          puts "You win, #{@player1.name}!"
          break
        elsif @player2.lives == 1
          puts "Be careful #{@player2.name}, only 1 life left!"
        else
          puts "#{@player2.name} has #{@player2.lives} lives left."
        end
      end
    end

  end
end
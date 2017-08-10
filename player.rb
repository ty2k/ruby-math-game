# player.rb

module MathGame
  class Player

    attr_reader :name
    attr_accessor :lives

    # Get a player's name from prompt, assign them 3 lives
    def initialize
      @name = gets.chomp
      @lives= 3
    end

    # Reduce lives by one when the player answers incorrectly
    def lose_life
      @lives -= 1
    end

  end
end
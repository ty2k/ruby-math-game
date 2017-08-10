# turn.rb

module MathGame
  class Turn

    attr_reader :result

    def initialize
      @result = false
      get_question
    end

    # Get a new question, reduce player's life count by 1 if incorrect answer
    def get_question
      question = MathGame::Question.new
      if question.correct
        puts "Correct!"
        @result = true
      else
        @lose_life
        puts "Wrong!"
      end
    end

  end
end
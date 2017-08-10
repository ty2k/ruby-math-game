# question.rb

module MathGame
  class Question

    attr_reader :answer, :correct

    # Create two random numbers and set default answer status to incorrect
    def initialize
      @number1 = rand(1..20)
      @number2 = rand(1..20)
      @correct = false
      ask
    end

    # Ask the player a question and get their response
    def ask
      puts "What is the sum of #{@number1} and #{@number2}?"
      response = gets.chomp.to_i
      if response == @number1 + @number2
        @correct = true
      end
    end

  end
end
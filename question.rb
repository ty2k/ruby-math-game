class Question

  attr_reader :question, :answer

  # Initalize a new question with nil for question and answer
  def initialize
    @question = nil
    @answer = nil
  end

  # Come up with two pseudo-random numbers between 1-2
  def get_numbers
    number1 = rand(1..20)
    number2 = rand(1..20)
  end

  def get_answer
    @answer = number1 + number2
  end

  def get_question
    @question = "What is the sum of #{number1} and #{number2} ?"
  end

end
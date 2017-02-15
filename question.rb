class Question

  def initialize
    @number1 = rand(20)
    @number2 = rand(20)
  end

  def present(target)
    "#{target}: What does #{@number1} plus #{@number2} equal?"
  end

  def check_answer(player_answer)
    answer = @number1 + @number2
    player_answer == answer.to_s
  end
end
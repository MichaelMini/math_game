class Question
  # attr_accessor number1
  # attr_accessor number2

  def initialize
    @number1 = rand(20)
    @number2 = rand(20)
  end

  def present(target)
    "#{target}: What does #{@number1} plus #{@number2} equal?"
  end

  def check_answer(player_answer)
    # random = 2.times.map{ 1 + Random.rand(20) }
    # answer = random[0] + random[1]
    answer = @number1 + @number2
    # puts "#{target}: What does #{random[0]} plus #{random[1]} equal?"
    # player_answer = gets.chomp
    # if player_answer == answer.to_s
    #   # puts "#{target} ZOMG No NO NO! Correct!"
    #   return true
    # else
    #   # puts "#{target} Seriously? No! Wrong!"
    #   return false
    # end
    player_answer == answer.to_s
  end
end
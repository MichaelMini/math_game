class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @other_player = player2
  end
  def game_loop
    count = 3
    while @player1.alive? and @player2.alive?
      question = Question.new

      puts question.present(@current_player.name)
      player_answer = gets.chomp
      if question.check_answer(player_answer)
        # correct answer
        puts "#{@current_player.name} ZOMG No NO NO! Correct!"
      else
        puts "#{@current_player.name} Seriously? No! Wrong!"
        @current_player.lifes -= 1
      end


      if not @current_player.alive?
        puts "#{@other_player.name} wins with a score of #{@other_player.lifes}/3"
        puts '----- GAME OVER -----'
        puts 'Good bye!'
        return
      end

      if @current_player == @player1
        @current_player = @player2
        @other_player = @player1
      else
        @current_player = @player1
        @other_player = @player2
      end
      puts "#{@player1.name}: #{@player1.score}/3 vs #{@player2.name}: #{@player2.score}/3"
      puts '----- NEW TURN -----'
    end
  end
end
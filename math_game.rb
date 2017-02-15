require('./player.rb')
require('./question.rb')
require('./game.rb')


player1 = Player.new('L. Ron')
player2 = Player.new('rohit')

game = Game.new(player1, player2)

puts game.game_loop






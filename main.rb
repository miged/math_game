require './player'
require './game'

game = Game.new

# Game loop
until game.winner
  puts game.new_problem
  answer = $stdin.gets.chomp
  puts game.evaluate(answer)

  if !game.winner
    puts game.output_new_turn
  end
end

puts game.output_winner

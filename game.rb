class Game
  def initialize
    @players = [Player.new, Player.new]
    @current_player = 0
  end

  def new_problem
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2

    display_problem
  end

  def evaluate(answer)
    if @answer == answer.to_i
      message = "Player #{@current_player + 1}: Correct!"
    else
      message = "Player #{@current_player + 1}: Wrong!"
      lose_life
    end

    if @current_player == 0
      @current_player = 1
    else
      @current_player = 0
    end

    message
  end

  def lose_life
    @players[@current_player].lives -= 1
  end

  def winner
    if @players[1].lives == 0
      0
    elsif @players[0].lives == 0
      1
    else
      nil
    end
  end

  def display_score
    "P1: #{@players[0].to_s} vs P2: #{@players[1].to_s}"
  end

  def display_problem
    "Player #{@current_player + 1}: What does #{@num1} + #{@num2} equal?"
  end

  def display_winner(winner)
    lives = @players[winner].to_s
    "Player #{winner + 1} wins with a score of #{lives}\n--- GAME OVER ---"
  end
end

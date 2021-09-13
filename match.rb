


require_relative "./player"
require_relative "./turn"

class Match

  def initialize()
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @players = [@player1, @player2].shuffle
  end

  def game_over?()
    @player1.loser? || @player2.loser?
  end

  def loss(current_player)
    current_player.lives -= 1
    return "Seriously? No!"
  end

  def display_result(result, current_player)
    result_message = (result ? "" : loss(current_player))
    score_message = "P1: #{@player1.lives}/3 vs #{@player2.lives}/3"
    puts result_message, score_message
  end

  def display_winner()
    winner = (@player1.loser? ? @player2 : @player1)
    
    puts "Player #{winner.id} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
  end

  def play()
    until game_over?()
      @players.rotate!
      current_player = @players.first
      turn = Turn.new

      puts "----- NEW TURN -----"
      puts turn.question(current_player.id)
      response_int = gets.chomp.to_i
      puts response_int
      result = turn.correct?(response_int, current_player.id)
      display_result(result, current_player)

    end
    display_winner()
  end
end


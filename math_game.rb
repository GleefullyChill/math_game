


require_relative "./player"
require_relative "./turn"

class match

  def initialize()
    @player1 = new.player(1)
    @player2 = new.player(2)
    @players = [@player1, @player2].shuffle
  end

  def game_over?()
    @player1.loser? || @player2.loser?
  end

  def loss(current_player)
    current_player.score -= 1
    return "Seriously? No!"
  end

  def display_result(result, current_player)
    result_message = (result ? "" : loss(current_player))
    score_message = "P1: #{@player1.score}/3 vs #{@player2.score}/3"
  end

  def display_winner()
    winner = (@player1.loser? @player2 : @player1)
    
    puts "Player #{winner.id} wins with a score of #{winner.score}"
    puts "----- GAME OVER -----"
  end

  def play()
    until game_over?()
      @players.rotate!
      current_player = players.first
      turn = new.turn()

      puts "----- NEW TURN -----"
      puts turn.question(current_player)
      response = gets.chomp

      result = turn.correct?(response, current_player)
      display_result(result)

    end
    display_winner()
  end


end


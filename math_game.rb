


class match

  def initialize()
    @player1 = new.player(1)
    @player2 = new.player(2)
    @players = [@player1, @player2].shuffle
  end

  def game_over?()
    @player1.loser? || @player2.loser?
  end

  def loss(player)
    player.score -= 1
    return "Seriously? No!"
  end

  display_result(result, current_player)
    message = (result ? )

  def play()
    until game_over?()
      @players.rotate!
      current_player = players.first
      turn = new.turn()

      turn.question(current_player)
      response = gets.chomp

      result = turn.loss?(response, current_player)
      display_result(result)

    end
    display_winner
  end


end


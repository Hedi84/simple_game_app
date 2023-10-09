require_relative 'view'
class Game
  attr_reader :player_score, :bank_score, :running, :turns

  def initialize
    @player_score = 0
    @bank_score = random_number(16, 21)
    @view = View.new
    @running = true
    @turns = 0
  end

  def run
    while @running && @turns < 2
      action = @view.ask_for_user_input(@player_score)
      validate_action(action.upcase)
    end
    game_summary
  end

  private

  def random_number(first, second)
    random = Random.new
    random.rand(first..second)
  end

  def validate_action(action)
    case action
    when 'DRAW'
      draw_card
    when 'FINISH'
      finish_game
    else
      @view.wrong_input
    end
  end

  def draw_card
    card = random_number(1, 11)
    @player_score += card
    @turns += 1
  end

  def finish_game
    @running = false
  end

  def game_summary
    @view.game_result(result)
    @view.current_score(@player_score)
    @view.bank_score(@bank_score)
  end

  def result
    if @player_score > 21
      :lose
    elsif @player_score == 21
      :black_jack
    elsif @player_score > @bank_score
      :win
    elsif @player_score < @bank_score
      :lose
    elsif @player_score == @bank_score
      :push
    end
  end
end

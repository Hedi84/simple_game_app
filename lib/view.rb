class View
  ENDINGS =
    {
      lose: 'sorry, you lost!',
      win: 'You won, cognratulations!',
      black_jack: 'Black Jack, congratulations!',
      push: 'Draw'
    }

  def ask_for_user_input(score)
    current_score(score)
    puts 'Would you like to draw or finish?'
    gets.chomp
  end

  def wrong_input
    puts 'sorry, that is not a valid input. Try again'
  end

  def current_score(score)
    puts "your current score is: #{score}"
  end

  def game_result(result)
    puts ENDINGS[result]
  end

  def bank_score(score)
    puts "The bank's score is: #{score}"
  end
end

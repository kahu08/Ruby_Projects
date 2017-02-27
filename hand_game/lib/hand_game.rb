class String
  define_method(:hand_game) do
    player1_score = 0.0
    player2_score = 0.0

    while true

      # puts "Lets play rock, paper, scissors"
      # player1 turn
      # puts "(player1)Do you choose rock, paper, or scissors?"
      # player1 = STDIN.gets.chomp
      # player2 turn
      # puts "(player2)Do you choose rock, paper, or scissors?"
      # player2 = STDIN.gets.chomp

      # comp_choice = %w[scissors rock paper][rand(3)]

        # puts "player2 picked: #{ player2 }"
        # puts "You picked: #{ player1 }"
    check for instances of the game
      msg = case [player1, player2]
        #if both players type the same instance
      when ['rock', 'rock'], ['paper', 'paper'], ['scissors', 'scissors']
      player2_score += 0.5
      player1_score += 0.5
        'The result is a tie'
        # if player1 wins
      when ['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']
      player1_score += 1
        'player1 wins!'
        #if player2 wins
      when ['paper', 'scissors'], ['scissors', 'rock'], ['rock', 'paper']
      player2_score += 1
        'player2 wins'
      end

       msg
      # puts "The  score is: #{player2_score }"
      # puts "Your score is: #{player1_score }"

    end
  end

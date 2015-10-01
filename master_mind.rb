
  def start_game
    puts"Welcome to MASTERMIND
    Would you like to (p)lay, read the (i)nstructions, or (q)uit"  # => nil
    @user_answer = gets.chomp.downcase.chars                       # ~> NoMethodError: undefined method `chomp' for nil:NilClass
  end                                                              # => :start_game

  start_game

  COLORS = ["r","g","b","y"]
  @secret = [COLORS[rand(0..3)], COLORS[rand(0..3)], COLORS[rand(0..3)], COLORS[rand(0..3)]]

  def game_movement
  loop do  @user_answer = gets.chomp.downcase.chars
    if @user_answer == ["c"]
      cheat
    end

    if @user_answer.length < @secret.length
      puts "Your answer is too short. Try keeping your answers to 4 color combos"
    elsif @user_answer.length > @secret.length
      puts "Your answer is too long. Try keeping your answers to 4 color combos"
    end
    if @user_answer != @secret
      puts "Try again! #{position_correct}"
    end
    break if @user_answer == @secret
    end
    puts "Congratulations! You guessed the sequence! +5 cool points for you! Would you like to (P)lay again or (Q)uit"
    @user_answer= gets.chomp.downcase.chars
    play_again
  end

  def position_correct
    position = 0
    colors = 0
    output =[]
    @user_answer.each_with_index do |char, index|
      if char == @secret[index]
        position += 1
        colors += 1
        output << "you have #{position} positions correct and #{colors} colors correct"
      end
    end
    output[output.length - 1]

  end

  def player
    puts "Awesome! Lets play"
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def instructions
    puts "The MASTERMIND will generate a combination of colors (Red, Green, Blue, and Yellow).
    Your job is to figure out what the color combination is. The MASTERMIND will tell you what positions and
    color combination you have correct in your guess.Goodluck!"
    start_game
    game_movement
  end

  def quit
    puts "Sad Panda. I hope you have a good day. Thank you for playing"
  end

  def cheat
    puts "You're a cheater! here is the secret #{@secret}"
  end

  def play_again
    if @user_answer == ["p"]
      player
      game_movement
    elsif @user_answer ==["q"]
      quit
    end
  end


#code

if @user_answer == ["p"]
  player
  game_movement
elsif @user_answer == ["i"]
  instructions
elsif @user_answer == ["q"]
  quit
elsif @user_answer == ["c"]
  cheat
else
  puts "I don't understand what you're asking me."
  start_game
  player
  game_movement
end

# >> Welcome to MASTERMIND
# >>     Would you like to (p)lay, read the (i)nstructions, or (q)uit

# ~> NoMethodError
# ~> undefined method `chomp' for nil:NilClass
# ~>
# ~> /Users/joshuajhun/Turing/MOD1/projects/master_mind.rb:5:in `start_game'
# ~> /Users/joshuajhun/Turing/MOD1/projects/master_mind.rb:8:in `<main>'

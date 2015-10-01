class PositionCorrect

  def initialize (user_answer)
  @user_answer = user_answer
  @secret = ["r","b","g","y"]
  end                           # => :initialize

  def result
    position = 0
    colors = 0

    @user_answer.each_with_index do |char, index|
      if char == @secret[index]
        position += 1
      end
    end
    @secret.each_index do |color_count|
      @user_answer.each do |char|
        if char == @secret[color_count]
          colors += 1
          require 'pry'
          binding.pry
          @secret.delete_at([color_count])
        end
      end
    end
    "you have #{position} positions correct and #{colors} colors correct"
  end                                                                      # => :result
end                                                                        # => :result

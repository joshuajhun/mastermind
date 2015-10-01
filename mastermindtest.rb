COLORS =["r", "g", "b", "y"]
# secret = "r" "r" "r" "r"
secret = [COLORS[rand(0..3)], COLORS[rand(0..3)], COLORS[rand(0..3)], COLORS[rand(0..3)]]
# guess = gets.chomp
#  if secret == guess
#    puts "You found the secret!"
#  else
#    puts "try again"
#  end
p secret

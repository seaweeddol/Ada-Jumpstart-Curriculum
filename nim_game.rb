# Write a Ruby program that allows two users to play a game of Nim together.

players = []
$piles = {}

# create piles
def create_piles(num)
  num.times do |i|
    $piles[:"#{(i + 65).chr}"] = rand(1..5)
  end
end

def pile_check()
  choice_valid = false
  until choice_valid
    pile_choice = gets.chomp.to_s.upcase
    puts "#{pile_choice}: #{$piles[:"#{pile_choice}"]}"
    if !$piles.key?(:"#{pile_choice}")
      print "That pile does not exist. Choose again: "
    elsif $piles[:"#{pile_choice}"] == 0
      print "Pile #{pile_choice} is empty! Choose again: "
    else
      until choice_valid == true
        print "How many sticks would you like to remove? "
        amount = gets.to_i
        if amount > $piles[:"#{pile_choice}"] || amount == 0
          puts "You cannot remove #{amount} from pile."
        else
          $piles[:"#{pile_choice}"] -= amount
          choice_valid = true
        end
      end
    end
  end
end

# ask user for name (player1)
print "What is player 1's name? "
players.push(gets.chomp.capitalize)
# ask second user for name (player2)
print "What is player 2's name? "
players.push(gets.chomp.capitalize)

# ask user for game difficulty
print "Select your game difficulty
Easy = 2 piles
Medium = 3 piles
Hard = 7 piles
Difficulty: "
difficulty = gets.chomp.downcase

# create piles hash based on difficult selected
if difficulty == "easy"
  create_piles(2)
elsif difficulty == "medium"
  create_piles(3)
else
  create_piles(7)
end

# randomly decide first player (0..1)
first_player = players[rand(0..1)]
puts "The first player is #{first_player}"

turn = 0

until $piles.values.all? {|a| a == 0}
  puts $piles
  if players[turn % 2] == first_player
    print "#{players[0]}, choose a pile: "
    pile_check()
  else
    print "#{players[1]}, choose a pile: "
    pile_check()
  end
  turn += 1
end

# after game finishes:
puts "#{players[(turn - 1) % 2]} is the winner!"
# print winner
# print player #1 score
# print player #1 move summary
# print player #2 score
# print player #2 move summary
#
# puts "would you like to play another game? (Y/N)"
# get user input y/n
# if Y
#   start new game
# else
#   print total scores across all games played
# end
